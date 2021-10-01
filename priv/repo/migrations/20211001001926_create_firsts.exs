defmodule BuzzKillfeed.Repo.Migrations.CreateFirsts do
  use Ecto.Migration

  def change do
    create table(:firsts) do
      add :value, :string

      timestamps()
    end
  end
end
