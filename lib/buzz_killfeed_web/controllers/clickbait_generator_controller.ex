defmodule ClickbaitGenerator.ClickbaitGeneratorController do
  use BuzzKillfeedWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def best_of(conn, _params) do
    render conn, "best_of.html"
  end
end
