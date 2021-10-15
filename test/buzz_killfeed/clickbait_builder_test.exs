defmodule BuzzKillfeed.ClickbaitBuilderTest do
  use BuzzKillfeed.DataCase

  import BuzzKillfeed.ClickbaitBuilder
  import BuzzKillfeed.RepoHelpers

  import BuzzKillfeed.NounsFixtures
  import BuzzKillfeed.AdjectivesFixtures
  import BuzzKillfeed.PredicatesFixtures

  describe "build_listicle" do
    test "using selectors works for random_noun" do
      noun_fixture()
      noun_fixture(%{name: "Pokemon", is_agent: true})
      noun_fixture(%{name: "Bugs Bunny", is_agent: true, is_proper: true})
      assert(random_noun([is_agent: true, is_proper: true]).name =="Bugs Bunny")
    end

    test "works" do
      noun_fixture(%{name: "Rock"})
      adjective_fixture(%{value: "Gnarly"})
      predicate_fixture(%{value: "Crush It"})
      assert(build_listicle()
             |> String.match?(~r/The \d+ Gnarly Rocks That Crush It/))
    end
  end
  describe "build_confession" do
    import BuzzKillfeed.VerbsFixtures

    test "works" do
      noun_fixture(%{name: "Rock"})
      adjective_fixture(%{value: "Gnarly"})
      verb_fixture(%{value: "Flee"})
      headline = build_confession()
      assert(headline
             |> String.match?(~r/ I Fled \w+ Gnarly Rock\Z/))
    end
  end
  describe "build_suspense" do
    import BuzzKillfeed.FirstsFixtures
    import BuzzKillfeed.NextsFixtures

    test "works" do
      first_fixture()
      next_fixture()
      noun_fixture(%{name: "Clown", is_agent: true})
      assert(build_suspense()
             |> String.match?(~r/Clown Ate A Peanut. What Happened Next Will Flip Your Lid/))
    end
  end
end
