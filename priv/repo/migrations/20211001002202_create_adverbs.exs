defmodule BuzzKillfeed.Repo.Migrations.CreateAdverbs do
  use Ecto.Migration

  def change do
    create table(:adverbs) do
      add :value, :string

      timestamps()
    end
  end
end
