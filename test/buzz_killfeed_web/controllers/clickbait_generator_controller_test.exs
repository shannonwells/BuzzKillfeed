defmodule BuzzKillfeedWeb.ClickbaitGeneratorControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true
  import BuzzKillfeed.NounsFixtures
  import BuzzKillfeed.AdjectivesFixtures
  import BuzzKillfeed.PredicatesFixtures
  import BuzzKillfeed.HeadlinesFixtures
  import BuzzKillfeed.VerbsFixtures
  alias BuzzKillfeed.RepoHelpers


  describe "generate (JSON)" do
    # being unable to nest describes is hella stupid.
    test "generate a listicle", %{conn: conn} do
      noun_fixture()
      adjective_fixture()
      predicate_fixture()

      conn = get conn, "/api/clickbait_generator/generate/listicle"
      {:ok, %{"headline" => h}} = Jason.decode(json_response(conn, 200))
      assert(String.match? h, ~r/The \d+ Goofy Buckets That Jumped The Shark\Z/)

    end
    test "generate a confession", %{conn: conn} do
      noun_fixture()
      adjective_fixture()
      verb_fixture()
      conn = get conn, "/api/clickbait_generator/generate/confession"
      {:ok, %{"headline" => h}} = Jason.decode(json_response(conn, 200))
      assert(String.match? h, ~r/I Jumped \w+ Goofy Bucket\Z/)
    end
  end


  describe "show (HTML)" do
    test "GET clickbait_generator_show", %{conn: conn} do
      record = headline_fixture()
      conn = get conn, "/clickbait_generator", id: record.id
      assert html_response(conn, 200) =~ record.headline
#      record = RepoHelpers.get_headline!(record.id)
#      assert(2 == record.views)
    end
  end

  describe "POST new headline (JSON)" do
    test "saves correct headlines", %{conn: conn} do
      [
        %{headline: "Foo bar bazzed.", headline_type: "voyeurism"},
        %{headline: "Foo bar bopped.", headline_type: "confession"},
        %{headline: "Foo bar booed.", headline_type: "suspense"},
      ]
      |> Enum.each(
           fn valid_attrs ->
             conn = post conn, "/api/bestof", valid_attrs
             {:ok, %{"share_url" => url}} = Jason.decode(json_response(conn, 200))
             assert(String.match?(url, ~r/[\d]+$/))
           end
         )


    end
  end
end
