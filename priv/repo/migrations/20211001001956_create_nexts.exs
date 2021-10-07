defmodule BuzzKillfeed.Repo.Migrations.CreateNexts do
  use Ecto.Migration

  def change do
    create table(:nexts) do
      add :value, :string

      timestamps()
    end

    alter table(:nexts) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:nexts)
  end

end
