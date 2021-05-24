defmodule TempleExampleWeb.Components.Card do
  import Temple.Component

  defcomp Header do
    header class: "p-4 border-b border-gray-300 bg-gray-50 rounded-t-lg" do
      div class: "flex items-center space-x-4" do
        slot :default
      end
    end
  end

  defcomp Body do
    div class: "p-4 border-b border-gray-300" do
      slot :default
    end
  end

  defcomp Footer do
    footer class: "bg-gray-50 rounded-b-lg p-4" do
      ul class: "flex items-center space-x-2" do
        slot :default
      end
    end
  end

  render do
    div class: "bg-white w-full flex flex-col rounded-lg shadow-lg" do
      slot :default
    end
  end
end
