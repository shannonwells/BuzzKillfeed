defmodule BuzzKillfeed.Superlative do
  use Ecto.Schema
  import Ecto.Changeset

  schema "superlatives" do
    field :value, :string
  end

  @doc false
  def changeset(superlative, attrs) do
    superlative
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
