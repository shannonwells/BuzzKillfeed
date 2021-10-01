defmodule BuzzKillfeed.Repo.Migrations.CreateParticles do
  use Ecto.Migration

  def change do
    create table(:particles) do
      add :value, :string
      add :is_singular, :boolean, default: false, null: false

      timestamps()
    end
  end
end
