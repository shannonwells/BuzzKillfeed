defmodule BuzzKillfeed.TemplatesFixtures do
  alias BuzzKillfeed.RepoHelpers

  @moduledoc """
  This module defines test helpers for creating Template entities
  """

  @doc """
    Generate a template.
  """
  def template_fixture(attrs \\ %{}) do
    {:ok, template} =
      attrs
      |> Enum.into(%{
        value: "{proper_noun} {past_tense_verb} a bear."
      })
      |> RepoHelpers.create_template()
    template
  end

end
