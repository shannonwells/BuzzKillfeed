defmodule BuzzKillfeed.Headline do
  use Ecto.Schema
  import Ecto.Changeset

  schema "headlines" do
    field :headline, :string
  end

  @doc false
  def changeset(headline, attrs) do
    headline
    |> cast(attrs, [:headline])
    |> validate_required([:headline])
    |> unique_constraint(:value)
  end
end
