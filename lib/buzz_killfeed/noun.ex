defmodule BuzzKillfeed.Noun do
  use Ecto.Schema
  import Ecto.Changeset
  alias BuzzKillfeed.Noun

  schema "nouns" do
    field :is_agent, :boolean, default: false
    field :is_proper, :boolean, default: false
    field :name, :string
    field :season, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(%Noun{} = noun, attrs) do
    noun
    |> cast(attrs, [:name, :is_proper, :is_agent, :season])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
