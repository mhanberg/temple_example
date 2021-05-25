defmodule TempleExampleWeb.Components.LinkList do
  import Temple.Component

  defcomp Item do
    a class: "text-blue-500 hover:underline", href: @url do
      slot :default
    end
  end

  render do
    for {{social, url}, idx} <- Enum.with_index(@socials, 1) do
      if idx > 1 do
        li class: "text-blue-700" do
          "/"
        end
      end

      li do
        span do
          slot :link, text: social, url: url, idx: idx
        end
      end
    end
  end
end
