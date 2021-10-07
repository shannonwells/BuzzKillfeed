defmodule BuzzKillfeed.Repo.Migrations.CreateAdverbs do
  use Ecto.Migration

  def change do
    create table(:adverbs) do
      add :value, :string

      timestamps()
    end
    alter table(:adverbs) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end
  def down do
    drop table(:adverbs)
  end
end
