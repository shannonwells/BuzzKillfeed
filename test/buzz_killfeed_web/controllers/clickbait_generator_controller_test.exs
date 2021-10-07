defmodule BuzzKillfeedWeb.ClickbaitGeneratorControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  describe "ClickbaitGeneratorController" do
    # being unable to nest describes is hella stupid.
    test "GET /api/clickbait_generator/generate", %{conn: conn} do
      conn = get conn, "/api/clickbait_generator/generate/listicle"
      assert json_response(conn, 200) =~ "This is a new"
    end

    test "GET clickbait_generator_show", %{conn: conn} do
      conn = get conn, "/clickbait_generator/show", id: 1234
      assert html_response(conn, 200) =~ "This is a saved headline"
    end
  end
end
