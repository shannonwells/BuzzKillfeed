defmodule BuzzKillfeed.Seeds.Verbs do
  alias BuzzKillfeed.Verb
  alias BuzzKillfeed.Repo

  def seed() do
    verbs = BkfSeeds.Verb.objects()
            |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Verb, verbs, on_conflict: :nothing)
  end

end
