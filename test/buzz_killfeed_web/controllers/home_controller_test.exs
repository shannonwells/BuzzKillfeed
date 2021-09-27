defmodule BuzzKillfeedWeb.HomeControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Buzz Killfeed"
  end
end
