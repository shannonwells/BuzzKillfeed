defmodule BuzzKillfeed.Repo.Migrations.CreateVerbs do
  use Ecto.Migration

  def change do
    create table(:verbs) do
      add :value, :string
      add :needs_agent, :boolean, default: false, null: false

      timestamps()
    end
  end
end
