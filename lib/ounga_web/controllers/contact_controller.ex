defmodule OungaWeb.ContactController do
  use OungaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
