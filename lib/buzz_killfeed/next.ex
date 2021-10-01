defmodule BuzzKillfeed.Next do
  use Ecto.Schema
  import Ecto.Changeset

  schema "nexts" do
    field :value, :string
  end

  @doc false
  def changeset(next, attrs) do
    next
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
