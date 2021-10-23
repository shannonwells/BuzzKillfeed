defmodule BuzzKillfeed.Seeds.Nouns do
  alias BkfSeeds.Seasons
  alias BuzzKillfeed.Noun
  alias BuzzKillfeed.Repo

  def seed() do
    seed_objects()
    seed_agents()
    seed_agents_proper()
    seed_seasonal_noun_objects()
    seed_seasonal_agents()
    seed_seasonal_proper_nouns()
  end

  defp seed_objects do
    objects = BkfSeeds.Noun.objects()
              |> Enum.map(fn name -> [name: name] end)

    Repo.insert_all(Noun, objects, on_conflict: :nothing)
  end

  defp seed_agents do
    agents = BkfSeeds.Noun.agents()
             |> Enum.map(fn name -> [name: name, is_agent: true] end)
    Repo.insert_all(Noun, agents, on_conflict: :nothing)
  end

  defp seed_agents_proper do
    agents_proper = BkfSeeds.Noun.agents_proper()
                    |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true] end)
    Repo.insert_all(Noun, agents_proper, on_conflict: :nothing)
  end

  defp seed_seasonal_noun_objects do
    seasonal_noun_objects = BkfSeeds.Noun.objects_seasonal()
    seasonal_noun_objects
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_noun_objects, season_a)
           season_num = Seasons.list[season_a]
           changeset = Enum.map(names, fn name -> [name: name, is_agent: false, season: season_num] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end

  defp seed_seasonal_agents do
    seasonal_agents = BkfSeeds.Noun.agents_seasonal()
    seasonal_agents
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_agents, season_a)
           %{^season_a => season} = Seasons.list
           changeset = names
                       |> Enum.map(fn name -> [name: name, is_agent: true, season: season] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end

  defp seed_seasonal_proper_nouns do
    seasonal_proper_nouns = BkfSeeds.Noun.proper_seasonal()
    seasonal_proper_nouns
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_proper_nouns, season_a)
           %{^season_a => season} = Seasons.list
           changeset = names
                       |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true, season: season] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end
end
