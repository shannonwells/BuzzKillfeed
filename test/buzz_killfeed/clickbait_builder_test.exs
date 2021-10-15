defmodule BuzzKillfeed.ClickbaitBuilderTest do
  use BuzzKillfeed.DataCase

  import BuzzKillfeed.ClickbaitBuilder
  import BuzzKillfeed.RepoHelpers
#  import BuzzKillfeed.FirstsFixtures
  import BuzzKillfeed.NounsFixtures
  import BuzzKillfeed.NextsFixtures
  import BuzzKillfeed.AdjectivesFixtures
  import BuzzKillfeed.PredicatesFixtures
  import BuzzKillfeed.VerbsFixtures

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
    test "works" do
      noun_fixture(%{name: "Rock"})
      adjective_fixture(%{value: "Gnarly"})
      verb_fixture(%{value: "Drop"})

      assert(build_confession()
             |> String.match?(~r/ I Dropped \w+ Gnarly Rock\Z/))
    end
  end
#  describe "build_suspense" do
#    first_fixture()
#    next_fixture()
#    noun_fixture(%{name: "Clown", is_agent: true})
#    assert(build_suspense()
#      |> String.match?(~r/Foo/))
#
#  end
end
