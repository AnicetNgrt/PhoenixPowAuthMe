defmodule AuthMePowWeb.PageController do
  use AuthMePowWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
