defmodule BuzzKillfeed.Seeds.NounSeeds do
  alias BuzzKillfeed.Seeds.Seasons
  alias BuzzKillfeed.Noun
  alias BuzzKillfeed.Repo

  def seed() do
    seed_objects()
    seed_agents()
    seed_agents_proper()
    seed_seasonal_noun_objects()
    seed_seasonal_agents()
    seed_seasonal_proper_nouns()
  end

  defp seed_objects do
    objects = [
                "Book",
                "Brain Hack",
                "Circus",
                "City",
                "Conspiracy Theory",
                "Country",
                "Explanation",
                "Fashion Mistake",
                "Felony",
                "Fortune Teller",
                "House",
                "Idea",
                "Interview Question",
                "Kiss",
                "Life Hack",
                "Low-Carb Lunch",
                "Movie",
                "Observation",
                "Pachenko Game",
                "Photo",
                "Pug Moment",
                "Reason",
                "Recycling Mistake",
                "Rumor",
                "Secret",
                "Sex Toy",
                "Sign",
                "Squad Goal",
                "Stunning Things",
                "Your Face",
    ] |> Enum.map(fn name -> [name: name] end)

    Repo.insert_all(Noun, objects, on_conflict: :nothing)
  end

  defp seed_agents do
    agents = [
      "Furry",
      "Manatee",
      "Influencer",
      "Hippie",
      "Republican",
      "Democrat",
      "Frood",
      "Reptile",
      "Guy",
      "Little Boy",
      "Baby Hedgehog",
      "Little Girl",
      "Old Man",
      "Old Woman",
      "Fireman",
      "Policeman",
      "Monkey",
      "Scientist",
      "Dog",
      "American",
      "White Person",
      "Baby",
      "Puppy",
      "Kitten",
      "Person",
      "Friend",
      "Lover",
      "Superhero",
      "Celebrity",
      "Clown",
      "Criminal",
      "Dude",
      "Bully",
      "Street Musician",
      "Kitten",
      "Dog",
      "Scientist",
      "Puppy",
      "Monkey",
      "Policeman",
      "Fireman",
      "Old Woman",
      "Old Man",
      "Little Girl",
      "TikToker",
      "Baby Hedgehog",
      "Rando",
      "Bartender",
      "Flight Attendant",
      "Pilot",
      "Mayor",
      "President",
      "Singer",
      "Anonymous Coward",
      "Florida Man",
      "Florida Woman",
      "Micropig",
      "Duck",
      "Old Cat",
      "Little Boy",
      "Guy",
      "Reptile",
      "Nerd",
      "Geek",
      "Cosplayer",
      "Otaku",
      "Anti-Vaxxer",
      "Anti-Masker",
    ]
    |> Enum.map(fn name -> [name: name, is_agent: true] end)
    Repo.insert_all(Noun, agents, on_conflict: :nothing)
  end

  defp seed_agents_proper do
    agents_proper = [
      "Ada Lovelace",
      "Alan Turing",
      "Alexis Denisoff",
      "Bae",
      "Benedict Cumberbatch",
      "Billie Eilish",
      "Brad Pitt",
      "Brian Kernighan",
      "Britney Spears",
      "Cardi B",
      "Chis Hemson",
      "Chris Evans",
      "Daniel Radcliffe",
      "David Boreanaz",
      "David Tennant",
      "Dennis Ritchie",
      "Dr Dre",
      "Dwayne 'The Rock' Johnson",
      "Ed Helms",
      "Edward Snowden",
      "Elijah Wood",
      "Elon Musk",
      "Emilia Clarke",
      "Eminem",
      "Eric Idle",
      "George Soros",
      "Gordon Ramsay",
      "Grace Hopper",
      "Gwynyth Paltrow",
      "Hugh Jackman",
      "Jack Black",
      "Jeff Bezos",
      "Jenny McCarthy",
      "Jerry Smith",
      "Joe Rogan",
      "John Cleese",
      "Katy Perry",
      "Keanu Reeves",
      "Kim Kardashian",
      "Kit Harington",
      "Kyle Gass",
      "Kylie Jenner",
      "Lena Headey",
      "Lil Nas X",
      "Linus Torvalds",
      "M. Night Shyamalan",
      "Maggie Smith",
      "Mario Cuomo",
      "Marjorie Taylor Greene",
      "Mark Ruffalo",
      "Martha Stewart",
      "Martin Shkreli",
      "Matt",
      "Mayim Bialik",
      "Mindy Kaling",
      "Morty Smith",
      "Neil Patrick Harris",
      "Nic Cage",
      "Orlando Bloom",
      "Paul Allen",
      "Peter Capaldi",
      "Peter Dinklage",
      "Rainn Wilson",
      "Rick Sanchez",
      "Robert Downey, Jr",
      "Ron DeSantis",
      "Ru Paul",
      "Ryan Reynolds",
      "Scarlett Johanssen",
      "Seth McFarlane",
      "Seth Rogen",
      "Snoop Dogg",
      "Steve Ballmer",
      "Steve Carell",
      "Steve Jobs",
      "Taylor Swift",
      "Terry Gilliam",
      "Terry Jones",
      "The CIA",
      "Tom Hiddleston",
      "Vladimir Putin",
      "Wil Wheaton",
      "Your Mom",
    ]
    |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true] end)
    Repo.insert_all(Noun, agents_proper, on_conflict: :nothing)
  end

  defp seed_seasonal_noun_objects do
    seasonal_noun_objects = %{
      :spring => [
        "Basketball",
        "Blackeyed Pea",
        "Dumpling",
        "Easter Egg",
        "Firecracker",
        "Gragger",
        "Hamantaschen",
        "Niangao",
        "Orange",
        "Tulip",
      ],
      :summer => [
        "Barbecue",
        "Baseball",
        "Cucumber",
        "Fireworks",
        "Futbol",
        "Lawnmower",
        "Strawberry",
        "Summer Camp",
        "Swimming Pool"
      ],
      :halloween => [
        "Necronomicon",
        "Poison",
        "Voodoo Doll",
        "Gravestone",
        "Grave",
        "Dead Body",
        "Candy Apple",
      ],
      :fall => ["Pumpkin", "Pumpkin-Spice", "Potato", "Stuffing", "Football"],
      :winter => ["Jingle Bell", "Christmas Tree", "Dreidel", "Menorah", "Sock", "Gelt", "Latke",
        "Candle", "Candy Cane", "Stocking", "Snowflake", "Sleigh", "Christmas Carol", "Sugar Plum","Holiday Lights",
        "Nutcracker", "Plum Pudding", "Icicle", "Snowboard", "Hockey Puck", "Hockey Stick", "Ice Rink"]
    }
    seasonal_noun_objects |> Map.keys() |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_noun_objects, season_a)
           season_num = Seasons.list[season_a]
           changeset = Enum.map(names, fn name -> [name: name, is_agent: false, season: season_num] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end

  defp seed_seasonal_agents do
    seasonal_agents = %{
      :spring => ["Bunny", "Clown", "Rooster", "Nian", "Chick", "Goalie"],
      :summer => ["Pitcher", "Shortstop", "Cicada"],
      :halloween => ["Black Bat",
        "Black Cat",
        "Crow",
        "Ghost",
        "Ghoul",
        "Goblin",
        "Magpie",
        "Monster",
        "Owl",
        "Raven",
        "Skeleton",
        "Spider",
        "Vampire",
        "Ventroliquist Dummy",
        "Zombie"
      ],
      :fall => ["Turkey", "Pilgrim", "Puritan", "Quarterback"],
      :winter => ["Yule", "Angel", "Elf", "Snowman", "Snow Woman", "Goalie"]
    }
    seasonal_agents
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_agents, season_a)
           %{^season_a => season} = Seasons.list
           changeset = names
                       |> Enum.map(fn name -> [name: name, is_agent: true, season: season] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end

  defp seed_seasonal_proper_nouns do
    seasonal_proper_nouns = %{
      :spring => ["Easter Bunny", "Haman"],
      :summer => ["Puck", "Titania", "Guy Fieri", "Oberon"],
      :halloween => [
        "Bram Stoker",
        "Bela Lugosi",
        "Christopher Lee",
        "Dracula",
        "Edgar Allan Poe",
        "Elvira",
        "H.P. Lovecraft",
        "Lon Chaney",
        "Mary Shelley",
        "Vincent Price"
      ],
      :winter => [
        "Buddy",
        "Charles Dickens",
        "Ebenezer Scrooge",
        "King Wenceslas",
        "Krampus",
        "Mrs. Claus",
        "Santa Claus"
      ]
    }
    seasonal_proper_nouns
    |> Map.keys()
    |> Enum.map(
         fn season_a ->
           names = Map.get(seasonal_proper_nouns, season_a)
           %{^season_a => season} = Seasons.list
           changeset = names
                       |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true, season: season] end)
           Repo.insert_all(Noun, changeset, on_conflict: :nothing)
         end
       )
  end
end
