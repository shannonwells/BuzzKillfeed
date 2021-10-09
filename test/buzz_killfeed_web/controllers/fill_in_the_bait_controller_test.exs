defmodule BuzzKillfeedWeb.FillInTheBaitControllerTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  describe "fill_in_the_blank submit" do
    import BuzzKillfeed.TemplatesFixtures


    ["does not fail"]
    |> Enum.each(fn tc ->
          test( ("POST /api/fill_in_the_blank/:wordlist" <> tc), %{conn: conn}) do
            record = template_fixture()
            valid_attrs = %{ words: ["Jerry", "ate"], template_id: record.id}
            conn = post conn, "/api/fill_in_the_bait", valid_attrs
            assert json_response(conn, 200)
          end
        end)
  end

  describe "index" do
    test "GET index does not fail", %{conn: conn} do
      conn = get conn, "/fill_in_the_bait"
      assert html_response(conn, 200)
    end
  end
end
