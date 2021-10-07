defmodule BuzzKillfeed.Repo.Migrations.CreateHeadlines do
  use Ecto.Migration

  def up do
    create table(:headlines) do
      add :headline, :text
      add :headline_type, :integer
      add :views, :integer
      timestamps()
    end

    alter table(:headlines) do
      modify(:inserted_at, :timestamp, default: fragment("NOW()"))
      modify(:updated_at, :timestamp, default: fragment("NOW()"))
    end
  end

  def down do
    drop table(:headlines)
  end
end
