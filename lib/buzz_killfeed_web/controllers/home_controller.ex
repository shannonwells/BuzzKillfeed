defmodule BuzzKillfeedWeb.HomeController do
  use BuzzKillfeedWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
