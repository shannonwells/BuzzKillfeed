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
end
