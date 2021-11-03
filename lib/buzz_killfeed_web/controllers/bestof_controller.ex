defmodule Bestof.BestofController do
  use BuzzKillfeedWeb, :controller
  alias BuzzKillfeed.RepoHelpers
  alias ClickbaitGenerator.ClickbaitGeneratorView

  def index(conn, _params) do
    conn
    |> assign(:headlines, RepoHelpers.bestof_headlines())
    |> render("index.html")
  end

  # TODO make sure you can't just save whatever
  def create(conn, %{"headline" => h, "headline_type" => ht}) do
    h = RepoHelpers.get_or_create_headline(%{
      "headline" => h,
      "headline_type" => ClickbaitGeneratorView.headline_str_to_int(ht),
      "views" => 1
    })
    conn
    |> assign(:headline_id, h.id)
    |> render("create.json")
  end

  def show(conn, %{"id" => id}) do
    conn
    |> redirect(to: Routes.clickbait_generator_path(conn, :show, id))
  end

end
