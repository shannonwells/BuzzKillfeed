defmodule BuzzKillfeed.Seeds.SuperlativeSeeds do
  alias BuzzKillfeed.Superlative
  alias BuzzKillfeed.Repo
  def seed() do
    superlatives = [
                     "Best",
                     "Worst",
                     "Greatest",
                     "Silliest",
                     "Dumbest",
                     "Tiniest",
                     "Biggest",
                     "Most Dangerous",
                     "Safest",
                     "Strangest",
                     "Creepiest",
                     "Funkiest",
                     "Hottest",
                     "Grossest",
                     "Most Breathtaking",
                     "Most Astonishing",
                     "Insane",
                     "Most Amazing",
                     "Heartbreaking",
                     "Saddest",
                     "Happiest",
                     "Most Exciting",
                     "Healthiest",
                     "Most Poisonous",
                     "Unhealthiest",
                     "Time-Travelling",
                     "Most Terrifying",
                     "Annoying",
                     "Secret",
                     "Craziest",
                     "Weirdest",
                     "Most Stunning",
                     "Epic",
                     "Most Hideous",
                     "Most Disgusting",
                     "Most Incredible",
                     "Wackiest",
                   ]
                   |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Superlative, superlatives, on_conflict: :nothing)
  end

end
