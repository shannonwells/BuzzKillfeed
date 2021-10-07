defmodule BuzzKillfeed.Repo.Migrations.CreateAdjectives do
  use Ecto.Migration

  def change do
    create table(:adjectives) do
      add :value, :string
      add :season, :integer

      timestamps()
    end
    alter table(:adjectives) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:adjectives)
  end
end
