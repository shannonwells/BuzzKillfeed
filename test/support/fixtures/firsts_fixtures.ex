defmodule BuzzKillfeed.FirstsFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Adjectives entities
  """

  @doc """
  Generate a adjective.
  """
  def first_fixture(attrs \\ %{}) do
    {:ok, record} =
      attrs
      |> Enum.into(%{
        value: "Ate A Peanut"
      })
      |> create_first()
    record
  end
end
