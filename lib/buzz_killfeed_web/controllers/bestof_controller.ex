defmodule Bestof.BestofController do
  use BuzzKillfeedWeb, :controller
  alias BuzzKillfeed.RepoHelpers

  def index(conn, _params) do
    conn
    |> render("index.html", headlines: RepoHelpers.list_headlines())
  end

  def create(conn, %{headline: headline}) do

  end

  def show(conn, %{headline_id: id}) do
    conn
    |> render("show.html", headline: RepoHelpers.get_headline!(id))
  end
end
