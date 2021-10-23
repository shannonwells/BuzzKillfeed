defmodule BuzzKillfeed.Seeds.Nexts do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Next


  def seed do
    nexts = BkfSeeds.Next.objects()
            |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Next, nexts, on_conflict: :nothing)

  end
end
