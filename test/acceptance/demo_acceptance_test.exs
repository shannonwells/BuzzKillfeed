defmodule BuzzKillfeed.UserListTest do
  use BuzzKillfeed.AcceptanceCase, async: true

  test "javascript is working", %{session: session} do
    session
    |> visit("/")
    |> find(Query.css("#js-demo"))
    |> assert_text("custom js is working")
  end
end
