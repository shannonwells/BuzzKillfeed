defmodule BuzzKillfeedWeb.FillInTheBaitControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  import BuzzKillfeed.TemplatesFixtures
  describe "fill_in_the_blank submit" do
    test(("POST /api/fill_in_the_blank/:wordlist does not fail"), %{conn: conn}) do
      record = template_fixture()
      valid_attrs = %{wordlist: ["Jerry", "ate", "bee", "foo"], template_id: record.id}
      conn = post conn, "/api/fill_in_the_bait", valid_attrs
      assert json_response(conn, 200)
    end
  end

  describe "index" do
    test "GET index does not fail", %{conn: conn} do
      template_fixture()
      conn = get conn, "/fill_in_the_bait"
      assert html_response(conn, 200)
    end
  end
end
