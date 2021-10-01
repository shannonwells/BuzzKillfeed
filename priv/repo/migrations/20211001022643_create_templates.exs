defmodule BuzzKillfeed.Repo.Migrations.CreateTemplates do
  use Ecto.Migration

  def change do
    create table(:templates) do
      add :value, :string

      timestamps()
    end
  end
end
