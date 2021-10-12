defmodule FillInTheBait.FillInTheBaitController do
  use BuzzKillfeedWeb, :controller
  import BuzzKillfeed.RepoHelpers, only: [random_template: 0, get_template!: 1]

  def index(conn, _params) do
    conn
    |> render("index.html", %{wordlist: get_needed_words(random_template().value)})
  end

  def create(conn, %{"words" => words, "template_id" => template_id}) do
    IO.inspect(words)
    template = get_template!(template_id).value
    conn
    |> render("create.json", %{template: template, wordlist: words})
  end

  def get_needed_words(template) do
    Regex.scan(~r/\{\w+\}/, template)
    |> Enum.flat_map(fn l -> l end)
    |> Enum.map(fn item -> Regex.replace(~r/[\{\}]/, item, "")  end)

  end
end
