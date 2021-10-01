defmodule BuzzKillfeed.Particle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "particles" do
    field :is_singular, :boolean, default: false
    field :value, :string
  end

  @doc false
  def changeset(particle, attrs) do
    particle
    |> cast(attrs, [:value, :is_singular])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end
end
