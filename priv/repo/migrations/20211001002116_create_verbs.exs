defmodule BuzzKillfeed.Repo.Migrations.CreateVerbs do
  use Ecto.Migration

  def change do
    create table(:verbs) do
      add :value, :string
      add :needs_agent, :boolean, default: false, null: false

      timestamps()
    end

    alter table(:verbs) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:verbs)
  end

end
