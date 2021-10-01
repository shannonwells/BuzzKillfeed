defmodule BuzzKillfeed.Verb do
  use Ecto.Schema
  import Ecto.Changeset

  schema "verbs" do
    field :needs_agent, :boolean, default: false
    field :value, :string
  end

  @doc false
  def changeset(verb, attrs) do
    verb
    |> cast(attrs, [:value, :needs_agent])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
