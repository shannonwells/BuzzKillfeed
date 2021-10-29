defmodule BuzzKillfeedWeb.BestofControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true
  import BuzzKillfeed.HeadlinesFixtures

  describe "get index (HTML)" do
    test "works", %{conn: conn} do
      r1 = headline_fixture(%{headline: "First", views: 5})
      r2 = headline_fixture(%{headline: "Second", views: 3})
      r3 = headline_fixture(%{headline: "Third", views: 1})
      conn = get conn, "/bestof"
      assert html_response(conn, 200) =~ r1.headline
      assert html_response(conn, 200) =~ r2.headline
      assert html_response(conn, 200) =~ r3.headline
    end
  end

  describe "show" do
    test "GET show works", %{conn: conn} do
      r = headline_fixture()
      conn = get conn, "/bestof/#{r.id}"
      assert redirected_to(conn, 302) == clickbait_generator_path(conn, :index)
    end
  end

  describe "create" do
    # TODO: verify if you can just cause any headline to be "saved".
    test "POST create works", %{conn: conn} do
      valid_attrs = %{headline: "Foo Bar Has a Bazz!", headline_type: "listicle"}
      conn = post conn, "/api/bestof", valid_attrs
      assert json_response(conn, 200)
    end
  end
end
