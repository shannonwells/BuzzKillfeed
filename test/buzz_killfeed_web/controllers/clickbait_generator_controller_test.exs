defmodule BuzzKillfeedWeb.ClickbaitGeneratorControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  describe "ClickbaitGeneratorController" do
    import BuzzKillfeed.HeadlinesFixtures
    import BuzzKillfeed.NounsFixtures

    # being unable to nest describes is hella stupid.
    test "GET /api/clickbait_generator/generate", %{conn: conn} do
      record = noun_fixture()
      conn = get conn, "/api/clickbait_generator/generate/listicle"
      assert json_response(conn, 200) =~ "This is a new " <> record.name
    end

    test "GET clickbait_generator_show", %{conn: conn} do
      record = headline_fixture()
      conn = get conn, "/clickbait_generator", id: record.id
      assert html_response(conn, 200) =~ record.headline
    end
  end
end
