defmodule ClickbaitGenerator.ClickbaitGeneratorController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.Repo
  alias BuzzKillfeed.Repo

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  # TODO: should be restricted to JSON only
  def generate(conn, %{"headline_type" => headline_type}) do
    headline = case headline_type do
      "listicle" -> build_listicle()
    end
    render conn, "headline.json", %{headline: headline}
  end

  def best_of(conn, _params) do
    render conn, "best_of.html"
  end

  defp build_listicle do
    "This is a new #{Repo.random_noun()}"
  end
end
