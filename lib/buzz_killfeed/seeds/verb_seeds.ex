defmodule BuzzKillfeed.Seeds.VerbSeeds do
  alias BuzzKillfeed.Verb
  alias BuzzKillfeed.Repo

  def seed() do
    verbs = [
              "Answer",
              "Approach",
              "Befriend",
              "Build",
              "Debate",
              "Discuss",
              "Disrobe",
              "Eat",
              "Feel",
              "Flee",
              "Fool",
              "Hear",
              "HODL",
              "Keep",
              "Know",
              "Mention",
              "Mansplain",
              "Marry",
              "Meet",
              "Ogle",
              "Peel",
              "Reveal",
              "See",
              "Smell",
              "Sniff",
              "Snog",
              "Steal",
              "Strip",
              "Stun",
              "Conquer",
              "Taste",
              "Thrash",
              "Throttle",
              "Trick",
              "Tweet",
              "Watch",
              "Wrestle",
              "Yeet",
            ]
            |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Verb, verbs, on_conflict: :nothing)
  end

end
