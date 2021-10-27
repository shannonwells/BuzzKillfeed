defmodule Bestof.BestofController do
  use BuzzKillfeedWeb, :controller
  alias BuzzKillfeed.RepoHelpers

  def index(conn, _params) do
    conn
    |> assign(:headlines, RepoHelpers.list_headlines())
    |> render("index.html")
  end

  # TODO make sure you can't just save whatever
  def create(conn, %{"headline" => headline}) do
    {:ok, h} = RepoHelpers.create_headline(%{"headline" => headline})
    conn
    |> assign(:headline_id, h.id)
    |> render("create.json")
  end

  def show(conn, %{"id" => id}) do
    conn
    |> assign(:id, id)
    |> redirect(to: Routes.clickbait_generator_path(conn, :index))
  end
end
