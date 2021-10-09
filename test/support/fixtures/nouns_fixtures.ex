defmodule BuzzKillfeed.NounsFixtures do
  alias BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Noun entities
  """

  @doc """
  Generate a noun.
  """
  def noun_fixture(attrs \\ %{}) do
    {:ok, noun} =
      attrs
      |> Enum.into(%{
        name: "Rabbit"
      })
      |> RepoHelpers.create_noun()
    noun
  end
end
