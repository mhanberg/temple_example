defmodule TempleExampleWeb.Components.LinkList do
  import Temple.Component
  alias Phoenix.Naming

  def url_text(text, true) do
    url_text(text, false) <> ", "
  end

  def url_text(text, false) do
    Naming.humanize(text)
  end

  defcomp Item do
    a class: "text-blue-500 hover:underline", href: @url do
      slot :default
    end
  end

  render do
    for {{social, url}, idx} <- Enum.with_index(@socials, 1) do
      li do
        span do
          slot :link, text: social, url: url, idx: idx
        end
      end
    end
  end
end
