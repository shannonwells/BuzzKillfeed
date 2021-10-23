defmodule BuzzKillfeed.Seeds.Predicates do
  alias BuzzKillfeed.Predicate
  alias BuzzKillfeed.Repo

  def seed() do
    predicates = BkfSeeds.Predicate.objects()
                 |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Predicate, predicates, on_conflict: :nothing)

  end
end
