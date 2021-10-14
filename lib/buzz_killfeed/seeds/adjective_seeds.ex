defmodule BuzzKillfeed.Seeds.AdjectiveSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Adjective
  alias BuzzKillfeed.Seeds.Seasons

  def seed() do
    seed_adjectives()
    seed_seasonal_adjectives
  end

  defp seed_seasonal_adjectives() do

    seasonal_adj = %{
      :spring => ["Flowery", "Breezy", "Easter", "Spring"],
      :summer => ["Hot", "Humid", "Lazy", "Sunny"],
      :halloween => [
        "Ghoulish",
        "Ghastly",
        "Fiendish",
        "Devilish",
        "Haunted",
        "Undead",
        "Dead",
        "Bloody",
        "Bleeding",
        "Dismembered",
        "Ghostly",
        "Demonic",
        "Pagan"
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
      "Cranky",
      "Great",
      "Funny",
      "Weird",
      "Silly",
      "Dumb",
      "Dangerous",
      "Strange",
      "Creepy",
      "Funky",
      "Hot",
      "Cool",
      "Breathtaking",
      "Astonishing",
      "Radical",
      "Gnarly",
      "Grody",
      "Amazing",
      "Grotesque",
      "Shabby",
      "Janky",
      "Skeevy",
      "Heartbreaking",
      "Tragic",
      "Pathetic",
      "Joyous",
      "Exciting",
      "Unhealthy",
      "Poisonous",
      "Diseased",
      "Time-Travelling",
      "Terrifying",
      "Horrifying",
      "Irritating",
      "Cringey",
      "Rude",
      "Secret",
      "Shameless",
      "Stunning",
      "Ancient",
      "Alien",
      "Boozy",
      "Mind-Boggling",
      "Barking Mad",
      "Loony",
      "Spectacular",
      "Gorgeous",
      "Filthy",
      "Dirty",
      "Combustible",
      "Stylish",
      "Irresistible",
      "Alien",
      "Ancient",
      "Stunning",
      "Shameless",
      "Brutal",
      "Stinky",
      "Fabulous",
      "Mind-Numbing",
      "Coma-Inducing",
      "Unbelievable",
      "Fartwarming",
      "Incredible",
      "Whiny",
      "Adorable",
      "Filthy Rich",
      "Unbearable",
      "Insufferable",
      "Despicable",
      "Heartwarming",
      "Outrageous",
      "Unbelievable",
      "Record-Breaking",
      "Tremendous",
      "Embarrassing",
    ]
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Adjective, adjectives, on_conflict: :nothing)

  end
end
