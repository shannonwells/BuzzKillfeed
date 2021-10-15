defmodule BuzzKillfeed.AdjectivesFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Adjectives entities
  """

  @doc """
  Generate a adjective.
  """
  def adjective_fixture(attrs \\ %{}) do
    {:ok, record} =
      attrs
      |> Enum.into(%{
        value: "Goofy"
      })
      |> create_adjective()
    record
  end
end
