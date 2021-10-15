defmodule BuzzKillfeedWeb.ClickbaitGeneratorControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true
  import BuzzKillfeed.NounsFixtures
  import BuzzKillfeed.AdjectivesFixtures
  import BuzzKillfeed.PredicatesFixtures
  import BuzzKillfeed.HeadlinesFixtures
  import BuzzKillfeed.VerbsFixtures

  describe "generate (JSON)" do
    # being unable to nest describes is hella stupid.
    test "generate a listicle", %{conn: conn} do
      noun_fixture()
      adjective_fixture()
      predicate_fixture()

      conn = get conn, "/api/clickbait_generator/generate/listicle"
      {:ok, %{"headline" => h}} = Jason.decode(json_response(conn, 200))
      assert( String.match? h, ~r/The \d+ Goofy Buckets That Jumped The Shark\Z/ )

    end
    test "generate a confession", %{conn: conn} do
      noun_fixture()
      adjective_fixture()
      verb_fixture()
      conn = get conn, "/api/clickbait_generator/generate/confession"
      {:ok, %{"headline" => h}} = Jason.decode(json_response(conn, 200))
      assert( String.match? h, ~r/I Jumped \w+ Goofy Bucket\Z/ )
    end
  end


  describe "show (HTML)" do
    test "GET clickbait_generator_show", %{conn: conn} do
      record = headline_fixture()
      conn = get conn, "/clickbait_generator", id: record.id
      assert html_response(conn, 200) =~ record.headline
    end
  end
end
