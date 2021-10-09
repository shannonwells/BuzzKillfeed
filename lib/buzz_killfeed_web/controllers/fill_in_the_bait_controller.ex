defmodule FillInTheBait.FillInTheBaitController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers, only: [get_template!: 1]

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def create(conn, %{"words" => words, "template_id" => template_id}) do
    template = get_template!(template_id).value
    wordlist = template |> String.split(~r/\{\w+\}/)
    conn |> render(ClickbaitGenerator.ClickbaitGeneratorView,
              "headline.json",
              %{headline: template})
  end
end
