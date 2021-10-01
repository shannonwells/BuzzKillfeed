defmodule BuzzKillfeed.Adverb do
  use Ecto.Schema
  import Ecto.Changeset

  schema "adverbs" do
    field :value, :string
  end

  @doc false
  def changeset(adverb, attrs) do
    adverb
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
