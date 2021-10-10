defmodule BuzzKillfeed.Headline do
  use Ecto.Schema
  import Ecto.Changeset

  schema "headlines" do
    field :headline, :string
    field :headline_type, :integer, default: 0
    field :views, :integer, default: 0
    timestamps([type: :utc_datetime])
  end

  @doc false
  def changeset(headline, attrs) do
    headline
    |> cast(attrs, [:headline])
    |> validate_required([:headline])
    |> unique_constraint(:value)
  end
end
