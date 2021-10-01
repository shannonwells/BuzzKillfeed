defmodule BuzzKillfeedWeb.ClickbaitGeneratorControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  describe "ClickbaitGeneratorController" do
    test "GET /clickbait_generator/generate", %{conn: conn} do
      conn = get conn, "/clickbait_generator/generate", headline_type: "listicle"
      assert json_response(conn, 200) =~ "This is a new"
    end
  end

end
