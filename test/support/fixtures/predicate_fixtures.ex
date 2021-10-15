defmodule BuzzKillfeed.PredicatesFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Predicates entities
  """

  @doc """
  Generate a predicate.
  """
  def predicate_fixture(attrs \\ %{}) do
    {:ok, record} =
      attrs
      |> Enum.into(%{
        value: "Jumped The Shark"
      })
      |> create_predicate()
    record
  end
end
