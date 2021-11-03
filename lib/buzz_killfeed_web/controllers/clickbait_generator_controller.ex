defmodule ClickbaitGenerator.ClickbaitGeneratorController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers
  import BuzzKillfeed.ClickbaitBuilder

  def index(conn, params) do
    case params do
      %{"id" => id} -> get_headline_and_bump_view(conn, id)
      %{} -> assign(conn, :headline, random_headline())
    end
    |> render("index.html")
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

  #  same as Bestof#show
  def show(conn, params), do: index(conn, params)

  defp get_headline_and_bump_view(conn, id) do
    IO.inspect(conn.req_headers)
    {:ok, h } = bump_headline_view_count(id)
    assign(conn, :headline, h)
  end
end
