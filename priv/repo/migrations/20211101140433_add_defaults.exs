defmodule BuzzKillfeed.Repo.Migrations.AddDefaults do
  use Ecto.Migration
  import BuzzKillfeed.RepoHelpers
  alias BuzzKillfeed.Headline


  def up do
    alter table(:headlines) do
      modify(:views, :integer, default: 0)
      modify(:headline_type, :integer, default: 0)
    end

    alter table(:nouns) do
      modify(:season, :integer, default: 0)
    end

    alter table(:adjectives) do
      modify(:season, :integer, default: 0)
    end

#    Ecto.Multi.new()
#    |> Ecto.Multi.update_all(:update_all, Headline)
  end

  def down do
    alter table(:headlines) do
      modify(:views, :integer)
      modify(:headline_type, :integer)
    end

    alter table(:nouns) do
      modify(:season, :integer)
    end

    alter table(:adjectives) do
      modify(:season, :integer)
    end
  end
end
