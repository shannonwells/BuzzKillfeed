defmodule BuzzKillfeed.Repo.Migrations.CreatePredicates do
  use Ecto.Migration

  def up do
    create table(:predicates) do
      add :value, :string

      timestamps()
    end
    alter table(:predicates) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end
  def down do
    drop table(:predicates)
  end

end
