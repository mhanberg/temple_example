defmodule TempleExampleWeb.PageController do
  use TempleExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
