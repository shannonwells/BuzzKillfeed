defmodule BuzzKillfeed.HeadlinesTest do
  use BuzzKillfeed.DataCase

  alias BuzzKillfeed.RepoHelpers

  describe "headlines" do
    import BuzzKillfeed.HeadlinesFixtures

    @invalid_attrs %{title: nil}

    test "list_headlines/0 returns all headlines" do
      headline = headline_fixture()
      assert RepoHelpers.list_headlines() == [headline]
    end

    test "get_headline!/1 returns the headline with given id" do
      record = headline_fixture()
      assert RepoHelpers.get_headline!(record.id) == record
    end

    test "create_headline/1 with valid data creates a headline" do
      val = "some title"
      {:ok, record} = RepoHelpers.create_headline(%{headline: val})
      assert record.headline == val
    end

    test "create_headline/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = RepoHelpers.create_headline(@invalid_attrs)
    end

    test "delete_headline/1 deletes the headline" do
      record = headline_fixture()
      RepoHelpers.delete_headline(record)
      assert_raise Ecto.NoResultsError, fn -> RepoHelpers.get_headline!(record.id) end
    end

    test "random_headline fetches a headline" do
      record = headline_fixture()
      hid = RepoHelpers.random_headline().id
      assert(hid == record.id)
    end
  end
end
