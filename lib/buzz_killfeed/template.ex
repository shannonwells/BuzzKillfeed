defmodule BuzzKillfeed.Template do
  use Ecto.Schema
  import Ecto.Changeset

  schema "templates" do
    field :value, :string
  end

  @doc false
  def changeset(template, attrs) do
    template
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
