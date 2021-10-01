defmodule BuzzKillfeed.Adjective do
  use Ecto.Schema
  import Ecto.Changeset

  schema "adjectives" do
    field :value, :string
    field :season, :integer, default: 0
  end

  @doc false
  def changeset(adjective, attrs) do
    adjective
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
