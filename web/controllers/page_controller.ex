defmodule PiHelloPhoenix.PageController do
  use PiHelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
