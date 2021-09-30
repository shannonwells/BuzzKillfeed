defmodule BuzzKillfeed.Repo.Migrations.CreateNouns do
  use Ecto.Migration

  def up do
    create table(:nouns) do
      add :name, :string
      add :is_proper, :boolean, default: false, null: false
      add :is_agent, :boolean, default: false, null: false
      add :season, :integer

      timestamps()
    end

    create unique_index(:nouns, [:name])

    # because passing autogenerate: true to `timestamps` does not
    # do the job.
    alter table(:nouns) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:nouns)
  end

end
