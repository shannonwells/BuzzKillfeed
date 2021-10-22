defmodule BuzzKillfeed.Seeds.Firsts do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.First

  def seed() do
    firsts = BkfSeeds.First.objects()
             |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(First, firsts, on_conflict: :nothing)
  end
end
