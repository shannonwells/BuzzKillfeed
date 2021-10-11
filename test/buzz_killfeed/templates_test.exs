defmodule BuzzKillfeed.TemplatesTest do
  use BuzzKillfeed.DataCase

  alias BuzzKillfeed.RepoHelpers

  describe "get_template" do
    import BuzzKillfeed.TemplatesFixtures

    test "works" do
      record = template_fixture()
      assert RepoHelpers.get_template!(record.id) == record
    end
  end

  describe "create_template" do
    test "works" do
      val =  "This is a tempplate"
      {:ok, record}  = RepoHelpers.create_template(%{value: val})
      assert record.value == val
    end
  end
end
