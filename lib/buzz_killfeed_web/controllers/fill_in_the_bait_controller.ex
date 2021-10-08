defmodule FillInTheBait.FillInTheBaitController do
  use BuzzKillfeedWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def fill_in(conn, %{"words" => words, "template_id" => template_id}) do

#    q = from t in "templates", where id=type(template_id, :integer)
#    wordlist (q |> one).value |> String.split(re"")

  end
end
