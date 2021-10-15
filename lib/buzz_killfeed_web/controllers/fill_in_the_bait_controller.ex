defmodule FillInTheBait.FillInTheBaitController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers, only: [random_template: 0, get_template!: 1]

  def index(conn, _params) do
    conn
    |> render("index.html", %{template: random_template() })
  end

  def create(conn, %{"wordlist" => wordlist, "template_id" => template_id}) do
    template = get_template!(template_id).value
    conn
    |> render("create.json", %{template: template, wordlist: wordlist})
  end
end
