defmodule Bestof.BestofController do
  use BuzzKillfeedWeb, :controller
  alias BuzzKillfeed.RepoHelpers

  def index(conn, _params) do
    conn
    |> render("index.html", headlines: RepoHelpers.list_headlines())
  end
end
