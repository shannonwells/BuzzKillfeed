defmodule BuzzKillfeedWeb.HomeControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  describe "index" do
    test "GET /", %{conn: conn} do
      conn = get conn, "/"
      assert html_response(conn, 200) =~ "Buzz Killfeed"
    end
  end

end
