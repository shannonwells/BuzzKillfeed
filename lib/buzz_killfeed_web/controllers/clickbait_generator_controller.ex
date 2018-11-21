defmodule BuzzKillfeedWeb.ClickbaitGeneratorController do
  use BuzzKillfeedWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def best_of(conn, %{"id" => id}) do
    render conn, "best_of.html", id: id
  end
end
