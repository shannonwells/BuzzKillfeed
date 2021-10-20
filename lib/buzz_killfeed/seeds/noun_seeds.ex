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
                "Ancient Grain",
                "Bacon",
                "Blockchain",
                "Book",
                "Botnet",
                "Brain Hack",
                "Circus",
                "City",
                "Conspiracy Theory",
                "Cookie",
                "Country",
                "Crapcoin",
                "Cupcake",
                "Emoji",
                "Explanation",
                "Fashion Mistake",
                "Felony",
                "Fixie",
                "Flip Phone Benefit",
                "Foam Roller",
                "Food Fad",
                "Fortune Teller",
                "Friendship",
                "Government Shutdown",
                "Hack",
                "House",
                "Idea",
                "Interview Question",
                "Kiss",
                "Life Hack",
                "Low-Carb Lunch",
                "Microdown Patagonia Jacket",
                "Meme",
                "Movie",
                "Muffin",
                "Mullet",
                "NFT",
                "Observation",
                "Pachenko Game",
                "Photo",
                "Pie",
                "Pug Moment",
                "Ramen Creation",
                "Reason",
                "Recycling Mistake",
                "Rumor",
                "Sandwich",
                "Secret",
                "Sign",
                "Sleeping Position",
                "Squad Goal",
                "Startup Castle",
                "Stunning Thing",
                "Swear Word",
                "Text Message",
                "Ukelele",
                "Your Face",
              ]
              |> Enum.map(fn name -> [name: name] end)

    Repo.insert_all(Noun, objects, on_conflict: :nothing)
  end

  defp seed_agents do
    agents = [
               "Alien",
               "Anonymous Coward",
               "Anti-Masker",
               "Anti-Vaxxer",
               "Baby Hedgehog",
               "Baby",
               "Bantha Rider",
               "Bantha",
               "Bartender",
               "Bonehead",
               "Bozo",
               "Brony",
               "Bunny",
               "CIA Operative",
               "Celebrity",
               "Centipede",
               "Cheeto-Face",
               "Chicken",
               "Chihuahua",
               "Clown",
               "Cosplayer",
               "Criminal",
               "Democrat",
               "Dinosaur",
               "Dog",
               "Droid",
               "Duck",
               "Dude",
               "Ewok",
               "FBI Agent",
               "Fireman",
               "Flight Attendant",
               "Florida Man",
               "Florida Woman",
               "Flying Monkey",
               "Friend",
               "Frood",
               "Furry",
               "Gamergater",
               "Garage Dweller",
               "Garden Gnome",
               "Geek",
               "Goober",
               "Guy",
               "Hippie",
               "Hipster",
               "Honey Badger",
               "Influencer",
               "Jawa",
               "Joker",
               "Kitten",
               "Labradoodle",
               "LARPer",
               "Little Boy",
               "Little Girl",
               "Lover",
               "Macropig",
               "Manatee",
               "Mayor",
               "Mayor",
               "Megashark",
               "Micropig",
               "Monkey",
               "Murder Hornet",
               "Mynock",
               "Nerd",
               "Nerf Herder",
               "Old Cat",
               "Old Man",
               "Old Woman",
               "Otaku",
               "Pangolin",
               "Person",
               "Pilot",
               "Policeman",
               "Poodle",
               "Pug",
               "Puppy",
               "Rando",
               "Redditor",
               "Reptile",
               "Republican",
               "Russian Hacker",
               "Scientist",
               "Seagull",
               "Sheep",
               "Sheeple",
               "Shih-Tzu",
               "Short-Fingered Vulgarian",
               "Singer",
               "Singer",
               "Smurf",
               "Street Musician",
               "Superhero",
               "Terrorist",
               "TikToker",
               "Turd Burger",
               "Turd Disturber",
               "Turd Herder",
               "Turd Impersonator",
               "Turd Perturber",
               "Virgin Ragequitter",
               "Weeping Angel",
               "Wookiee",
             ]
             |> Enum.map(fn name -> [name: name, is_agent: true] end)
    Repo.insert_all(Noun, agents, on_conflict: :nothing)
  end

  defp seed_agents_proper do
    agents_proper = [
                      "Actual Monster",
                      "Ada Lovelace",
                      "Alan Turing",
                      "Alec Baldwin",
                      "Alex Jones",
                      "Alexis Denisoff",
                      "Angry Virgin",
                      "Ann Coulter",
                      "Ariana Grande",
                      "BB-8",
                      "Bae",
                      "Barack Obama",
                      "Batman",
                      "Beavis",
                      "Benedict Cumberbatch",
                      "Bernie Sanders",
                      "Betty White",
                      "Beyonce",
                      "Bill Maher",
                      "Bill O'Reilly",
                      "Boba Fett",
                      "Brad Pitt",
                      "Brian Kernighan",
                      "Butthead",
                      "C3P0",
                      "Captain Phasma",
                      "Cardi B",
                      "Charlie Sheen",
                      "Chis Hemson",
                      "Chris Evans",
                      "Communist",
                      "Cosplayer",
                      "Criminal",
                      "Daniel Radcliffe",
                      "Darth Maul",
                      "David Boreanaz",
                      "David Tennant",
                      "Democrat",
                      "Dennis Ritchie",
                      "Dre",
                      "Dwayne 'The Rock' Johnson",
                      "Ed Helms",
                      "Edward Snowden",
                      "Elijah Wood",
                      "Elon Musk",
                      "Emilia Clarke",
                      "Eminem",
                      "Eric Idle",
                      "Finn",
                      "Gary Busey",
                      "George Soros",
                      "Glenn Beck",
                      "Gordon Ramsay",
                      "Grace Hopper",
                      "Gwyneth Paltrow",
                      "Han Solo",
                      "Hillary Clinton",
                      "Hugh Jackman",
                      "Ivanka Trump",
                      "Jabba the Hutt",
                      "Jack Black",
                      "Jared Kushner",
                      "Jay Z",
                      "Jeff Bezos",
                      "Jenny McCarthy",
                      "Jerry Smith",
                      "Joe Rogan",
                      "John Cleese",
                      "John Mayer",
                      "John Oliver",
                      "Katy Perry",
                      "Keanu Reeves",
                      "Kellyann Conway",
                      "Kevin Spacey",
                      "Kim Jong Un",
                      "Kim Kardashian",
                      "Kiss",
                      "Kit Harington",
                      "Kyle Gass",
                      "Kylie Jenner",
                      "Kylo Ren",
                      "Lady Gaga",
                      "Lando Calrissian",
                      "Leia Organa",
                      "Lena Headey",
                      "Linus Torvalds",
                      "Louis CK",
                      "Luke Skywalker",
                      "M. Night Shyamalan",
                      "Mace Windu",
                      "Maggie Smith",
                      "Mario Cuomo",
                      "Marjorie Taylor Greene",
                      "Martha Stewart",
                      "Megatron",
                      "Meghan Markle",
                      "Mel Gibson",
                      "Melania Trump",
                      "Mindy Kaling",
                      "Mom",
                      "Morty Smith",
                      "Nancy Grace",
                      "Neil Patrick Harris",
                      "Nic Cage",
                      "Obi-Wan Kenobi",
                      "Orlando Bloom",
                      "Padme Amidala",
                      "Paul Allen",
                      "Peter Capaldi",
                      "Peter Dinklage",
                      "Prince William",
                      "R2D2",
                      "Rainn Wilson",
                      "Randy Quaid",
                      "Recep Erdoğan",
                      "Rey",
                      "Rick Sanchez",
                      "Robert Downey, Jr",
                      "Rodrigo Duterte",
                      "Ron DeSantis",
                      "Ru Paul",
                      "Ryan Reynolds",
                      "Scarlett Johanssen",
                      "Sean Spicer",
                      "Seth McFarlane",
                      "Seth Rogen",
                      "Shia LaBeouf",
                      "Snoop Dogg",
                      "Spider Man",
                      "Steve Ballmer",
                      "Steve Bannon",
                      "Steve Carell",
                      "Superman",
                      "Tauntaun",
                      "Taylor Swift",
                      "Terry Gilliam",
                      "Terry Jones",
                      "The CIA",
                      "The FBI",
                      "The Hulk",
                      "The Dude",
                      "The Joker",
                      "Theresa May",
                      "Tom Cruise",
                      "Tom Hiddleston",
                      "Vladimir Putin",
                      "Wil Wheaton",
                      "Wonder Woman",
                      "Yoda",
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
      :winter => [
        "Jingle Bell", "Christmas Tree", "Dreidel", "Menorah", "Sock", "Gelt", "Latke",
        "Candle", "Candy Cane", "Stocking", "Snowflake", "Sleigh", "Christmas Carol",
        "Sugar Plum", "Holiday Lights",
        "Nutcracker", "Plum Pudding", "Icicle", "Snowboard", "Hockey Puck",
        "Hockey Stick", "Ice Rink",
        "Ugly Christmas Sweater",
        "Leg Lamp",
      ]
    }
    seasonal_noun_objects
    |> Map.keys()
    |> Enum.map(
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
        "Poltergeist",
        "Raven",
        "Skeleton",
        "Spider",
        "Vampire",
        "Ventroliquist Dummy",
        "Zombie"
      ],
      :fall => ["Turkey", "Pilgrim", "Puritan", "Quarterback"],
      :winter => [
        "Angel", "Elf", "Snowman", "Snow Woman", "Goalie",

      ]
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
        "Santa Claus",
        "Frosty the Snowman",
        "Heat Miser",
        "Cold Miser",
        "Rudolph",
        "Jack Frost",
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
