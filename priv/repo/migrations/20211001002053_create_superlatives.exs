defmodule BuzzKillfeed.Repo.Migrations.CreateSuperlatives do
  use Ecto.Migration

  def change do
    create table(:superlatives) do
      add :value, :string

      timestamps()
    end
    alter table(:superlatives) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:superlatives)
  end
end
