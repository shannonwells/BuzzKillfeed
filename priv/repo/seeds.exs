# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BuzzKillfeed.Repo.insert!(%BuzzKillfeed.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias BuzzKillfeed.Noun
alias BuzzKillfeed.Repo

changeset = ["Furry", "Manatee", "Hippie", "Republican", "Democrat","Frood", "Reptile", "Guy", "Little Boy",
              "Baby Hedgehog", "Little Girl", "Old Man", "Old Woman", "Fireman", "Policeman", "Monkey", "Scientist",
              "Dog", "American", "White Person", "Baby", "Puppy", "Kitten", "Person", "Friend",  "Lover",  "Superhero",
              "Celebrity", "Clown", "Criminal",  "Dude", "Bully", "Street Musician", "Kitten", "Dog", "Scientist", "Puppy",
              "Monkey", "Policeman", "Fireman", "Old Woman", "Old Man", "Little Girl", "Baby", "Baby Hedgehog",
              "Rando","Bartender","Flight Attendant","Pilot","Mayor","President","Singer","Anonymous Coward",
               "Florida Man","Florida Woman", "Your Mom", "Micropig", "Duck",
              "Old Cat", "Little Boy", "Guy","Reptile", "Nerd","Geek","Cosplayer","Otaku"
            ]
  |> Enum.map(fn name ->[name: name, is_agent: true] end)
Repo.insert_all(Noun, changeset, on_conflict: :nothing)

season_enums = %{
  :spring => 0,
  :summer => 1,
  :halloween => 2,
  :winter => 3
}

seasonal_noun_objects = %{
  :spring => ["Hamantaschen", "Easter Egg", "Tulip","Gragger","Firecracker","Orange","Niangao","Dumpling", "Blackeyed Pea"],
  :summer => ["Barbecue", "Swimming Pool","Summer Camp","Band Camp","Lawnmower","Baseball","Futbol","Fireworks","Strawberry","Cucumber"],
  :halloween => ["Necronomicon", "Poison", "Puppet", "Voodoo Doll", "Gravestone", "Grave", "Dead Body"],
  :winter => ["Jingle Bell", "Christmas Tree", "Dreidel", "Menorah", "Sock", "Gelt", "Latke",
    "Candle", "Candy Cane", "Stocking", "Snowflake", "Sleigh", "Christmas Carol", "Sugar Plum",
    "Nutcracker", "Plum Pudding","Icicle","Snowboard","Hockey Puck","Hockey Stick","Ice Rink"]
}
seasonal_noun_objects
  |> Map.keys
  |> Enum.map (fn season_a ->
    names = Map.get(seasonal_noun_objects, season_a)
    %{^season_a => season}  = season_enums
    changeset = names |> Enum.map(fn name ->[name: name, is_agent: false, season: season] end)
    IO.inspect(changeset)
    Repo.insert_all(Noun, changeset, on_conflict: :nothing)
  end)


