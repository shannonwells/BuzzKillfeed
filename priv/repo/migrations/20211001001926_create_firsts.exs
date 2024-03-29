defmodule BuzzKillfeed.Repo.Migrations.CreateFirsts do
  use Ecto.Migration

  def change do
    create table(:firsts) do
      add :value, :string

      timestamps()
    end

    alter table(:firsts) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end
  def down do
    drop table(:firsts)
  end

end
