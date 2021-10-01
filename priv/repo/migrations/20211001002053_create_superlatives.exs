defmodule BuzzKillfeed.Repo.Migrations.CreateSuperlatives do
  use Ecto.Migration

  def change do
    create table(:superlatives) do
      add :value, :string

      timestamps()
    end
  end
end
