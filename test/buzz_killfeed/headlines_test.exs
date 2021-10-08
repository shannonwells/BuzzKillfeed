defmodule BuzzKillfeed.HeadlinesTest do
  use BuzzKillfeed.DataCase

  alias BuzzKillfeed.RepoHelpers

  describe "headlines" do
    alias BuzzKillfeed.Repo.Headline

    import BuzzKillfeed.HeadlinesFixtures

    @invalid_attrs %{title: nil}

    test "list_headlines/0 returns all headlines" do
      headline = headline_fixture()
      assert RepoHelpers.list_headlines() == [headline]
    end

    test "get_headline!/1 returns the headline with given id" do
      headline = headline_fixture()
      assert RepoHelpers.get_headline!(headline.id) == headline
    end

    test "create_headline/1 with valid data creates a headline" do
      valid_attrs = %{headline: "some title"}

      {:ok, h} = RepoHelpers.create_headline(valid_attrs)
      assert h.headline == "some title"
    end

    test "create_headline/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = RepoHelpers.create_headline(@invalid_attrs)
    end

    test "delete_headline/1 deletes the headline" do
      headline = headline_fixture()
      res = RepoHelpers.delete_headline(headline)
      assert_raise Ecto.NoResultsError, fn -> RepoHelpers.get_headline!(headline.id) end
    end
  end
end
