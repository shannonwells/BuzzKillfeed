defmodule BuzzKillfeed.Repo.Migrations.CreateTemplates do
  use Ecto.Migration

  def change do
    create table(:templates) do
      add :value, :string

      timestamps()
    end

    alter table(:templates) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end
  def down do
    drop table(:templates)
  end
end
