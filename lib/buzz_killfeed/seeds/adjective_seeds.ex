defmodule BuzzKillfeed.Seeds.AdjectiveSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Adjective
  alias BuzzKillfeed.Seeds.Seasons

  def seed() do
    seed_adjectives()
    seed_seasonal_adjectives()
  end

  defp seed_seasonal_adjectives() do
    seasonal_adj = %{
      :spring => ["Flowery", "Breezy", "Easter", "Spring"],
      :summer => ["Hot", "Humid", "Lazy", "Sunny"],
      :halloween => [
        "Bleeding",
        "Bloody",
        "Dead",
        "Demonic",
        "Devilish",
        "Dismembered",
        "Fiendish",
        "Ghastly",
        "Ghostly",
        "Ghoulish",
        "Haunted",
        "Pagan",
        "Undead",
      ],
      :winter => ["Icy", "Snowy", "Yuletide", "Christmasy", "Fried", "Festive", "Sparkling", "Jingling"]
    }

    # TODO: add season field to adjectives
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
    adjectives = [
                   "Adorable",
                   "Alien",
                   "Amazing",
                   "Ancient",
                   "Astonishing",
                   "Barking Mad",
                   "Batty",
                   "Boozy",
                   "Breathtaking",
                   "Broken",
                   "Brutal",
                   "Coma-Inducing",
                   "Combustible",
                   "Cool",
                   "Cranky",
                   "Creepy",
                   "Cringey",
                   "Crude",
                   "Dangerous",
                   "Dank",
                   "Despicable",
                   "Dirty",
                   "Diseased",
                   "Dumb",
                   "Embarrassing",
                   "Exciting",
                   "Fabulous",
                   "Filthy Rich",
                   "Filthy",
                   "Funky",
                   "Funny",
                   "Gnarly",
                   "Gorgeous",
                   "Great",
                   "Grody",
                   "Grotesque",
                   "Heartbreaking",
                   "Heartwarming",
                   "Hipster",
                   "Horrifying",
                   "Hot",
                   "Incredible",
                   "Insufferable",
                   "Irresistible",
                   "Irritating",
                   "Janky",
                   "Joyous",
                   "Loony",
                   "Mind-Boggling",
                   "Mind-Blowing",
                   "Mind-Numbing",
                   "Objectionable",
                   "Outrageous",
                   "Pathetic",
                   "Poisonous",
                   "Radical",
                   "Record-Breaking",
                   "Rude",
                   "Secret",
                   "Shabby",
                   "Shameless",
                   "Silly",
                   "Skeevy",
                   "Socially Unacceptable",
                   "Spectacular",
                   "Stinky",
                   "Strange",
                   "Stunning",
                   "Stylish",
                   "Tacky",
                   "Terrifying",
                   "Time-Travelling",
                   "Tragic",
                   "Trashy",
                   "Tremendous",
                   "Twisted",
                   "Unbearable",
                   "Unbelievable",
                   "Unhealthy",
                   "Vegan",
                   "Weird",
                   "Whiny",
                 ]
                 |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Adjective, adjectives, on_conflict: :nothing)

  end
end
