defmodule BuzzKillfeed.VerbsFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Verb entities
  """

  @doc """
  Generate a verb. Provide override attributes like so:
  ${value: "some value"}
  """
  def verb_fixture(attrs \\ %{}) do
    {:ok, record} =
      attrs
      |> Enum.into(%{
        value: "Jump"
      })
      |> create_verb()
    record
  end
end
