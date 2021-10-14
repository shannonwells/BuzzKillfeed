defmodule BuzzKillfeed.Seeds.VerbSeeds do
  alias BuzzKillfeed.Verb
  alias BuzzKillfeed.Repo

  def seed() do
    verbs = [
      "See",
      "Be Rescued From",
      "Be Stunned By",
      "Snog",
      "Ogle",
      "Eat",
      "Sniff",
      "Stun",
      "Trick",
      "Fool",
      "Disrobe",
      "Strip",
      "Trick",
      "Scare",
      "Flee",
      "Mock",
      "Haunt",
      "Unfollow",
      "Stalk",
      "Shatter",
      "Ragequit",
      "Wrestle",
      "Debate",
      "Thrash",
      "Throttle",
      "Tweet",
      "Share",
      "Yeet"
    ]
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Verb, verbs, on_conflict: :nothing)
  end

end
