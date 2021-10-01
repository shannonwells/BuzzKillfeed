defmodule BuzzKillfeed.Repo.Migrations.CreateAdjectives do
  use Ecto.Migration

  def change do
    create table(:adjectives) do
      add :value, :string

      timestamps()
    end
  end
end
