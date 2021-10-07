defmodule BuzzKillfeed.Predicate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "predicates" do
    field :value, :string

    timestamps()
  end

  @doc false
  def changeset(predicate, attrs) do
    predicate
    |> cast(attrs, [:value])
    |> validate_required([:value])
  end
end
