defmodule ClickbaitGenerator.ClickbaitGeneratorController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers
  import BuzzKillfeed.ClickbaitBuilder

  def index(conn, _params) do
    conn
    |> render("index.html", %{headline: random_headline().headline})
  end

  # TODO: should be restricted to JSON only
  def generate(conn, %{"headline_type" => headline_type}) do
    headline = case headline_type do
      "listicle" -> build_listicle()
      "confession" -> build_confession()
      "suspense" -> build_suspense()
      "temptation" -> build_temptation()
      "voyeurism" -> build_voyeurism()
      _ -> "Whups"
    end
    render conn, "headline.json", %{headline: headline}
  end

  def show(conn, %{"id" => id}) do
    headline = get_headline!(id)
    conn
    |> render( "index.html", %{headline: headline.value})
  end

end
