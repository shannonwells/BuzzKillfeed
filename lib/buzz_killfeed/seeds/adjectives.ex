defmodule BuzzKillfeed.Seeds.Adjectives do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Adjective
  alias BkfSeeds.Seasons

  def seed() do
    seed_adjectives()
    seed_seasonal_adjectives()
  end

  defp seed_seasonal_adjectives() do
    # TODO: add season field to adjectives
    seasonal_adj = BkfSeeds.Adjective.objects_seasonal
    seasonal_adj
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           values = Map.get(seasonal_adj, season_a)
           %{^season_a => season} = Seasons.list
           changeset = values
                       |> Enum.map(fn v -> [value: v, season: season] end)
           Repo.insert_all(Adjective, changeset, on_conflict: :nothing)
         end
       )

  end

  defp seed_adjectives() do
    adjectives = BkfSeeds.Adjective.objects()
                 |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Adjective, adjectives, on_conflict: :nothing)

  end
end
