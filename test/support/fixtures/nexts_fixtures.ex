defmodule BuzzKillfeed.NextsFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Next entities
  """

  @doc """
  Generate a adjective.
  """
  def next_fixture(attrs \\ %{}) do
    {:ok, record} =
      attrs
      |> Enum.into(%{
        value: "Will Flip Your Lid"
      })
      |> create_next()
    record
  end
end
