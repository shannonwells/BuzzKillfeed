defmodule BuzzKillfeed.First do
  use Ecto.Schema
  import Ecto.Changeset

  schema "firsts" do
    field :value, :string
  end

  @doc false
  def changeset(first, attrs) do
    first
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
