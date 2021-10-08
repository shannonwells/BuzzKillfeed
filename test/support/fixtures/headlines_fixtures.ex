defmodule BuzzKillfeed.HeadlinesFixtures do
  alias BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BuzzKillfeed.Accounts` context.
  """

  @doc """
  Generate a headline.
  """
  def headline_fixture(attrs \\ %{}) do
    {:ok, headline} =
      attrs
      |> Enum.into(%{
        headline: "some headline"
      })
      |> RepoHelpers.create_headline()
    headline
  end
end
