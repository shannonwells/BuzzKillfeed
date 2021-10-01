defmodule BuzzKillfeed.Repo.Migrations.CreateHeadlines do
  use Ecto.Migration

  def change do
    create table(:headlines) do
      add :headline, :text

      timestamps()
    end
  end
end
