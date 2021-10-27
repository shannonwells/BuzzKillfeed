defmodule FillInTheBait.FillInTheBaitController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers, only: [random_template: 0, get_template!: 1]

  def index(conn, _params) do
    conn
    |> assign(:template,  random_template())
    |> render("index.html")
  end

  def create(conn, %{"wordlist" => wordlist, "template_id" => template_id}) do
    template = get_template!(template_id).value
    conn
    |> assign(:template, template)
    |> assign(:wordlist, wordlist)
    |> render("create.json")
  end
end
