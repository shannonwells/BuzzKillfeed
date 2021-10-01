defmodule BuzzKillfeed.Repo.Migrations.CreateNexts do
  use Ecto.Migration

  def change do
    create table(:nexts) do
      add :value, :string

      timestamps()
    end
  end
end
