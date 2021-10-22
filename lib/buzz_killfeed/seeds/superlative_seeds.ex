defmodule BuzzKillfeed.Seeds.Superlatives do
  alias BuzzKillfeed.Superlative
  alias BuzzKillfeed.Repo
  def seed() do
    superlatives = BkfSeeds.Superlative.objects()
                   |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Superlative, superlatives, on_conflict: :nothing)
  end

end
