defmodule BuzzKillfeed.HeadlinesFixtures do
  import BuzzKillfeed.RepoHelpers
  @moduledoc """
  This module defines test helpers for creating Headline entities
  """

  @doc """
  Generate a headline.
  """
  def headline_fixture(attrs \\ %{}) do
      attrs
      |> Enum.into(%{
        headline: "some headline"
      })
      |> create_headline()
  end
end
