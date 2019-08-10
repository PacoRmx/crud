defmodule YetcargoWeb.PageController do
  use YetcargoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
