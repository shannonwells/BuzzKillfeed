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
alias BuzzKillfeed.Repo
#alias BuzzKillfeed.Adverb
alias BuzzKillfeed.Adjective
alias BuzzKillfeed.First
alias BuzzKillfeed.Headline
alias BuzzKillfeed.Next
alias BuzzKillfeed.Noun
alias BuzzKillfeed.Predicate
alias BuzzKillfeed.Superlative
alias BuzzKillfeed.Verb

Repo.insert_all(
  Headline,
  [
    [
      headline: "This Very First Clickbait Generator Headline Will Make You Laugh So Hard You'll Vomit",
      headline_type: 2
    ],
    [headline: "The 82 SAD Jawas That Prove You're A Complete Jerk", headline_type: 0],
    [headline: "Watch As This Old Cat Sniffs A Funny Flight Attendant", headline_type: 4],
    [
      headline: "The 28 Coma-Inducing Circuses That The Russians Definitely Did Not Hack Into. They Didn't Do It, Nobody Saw Them, You Can't Prove Anything!!!",
      headline_type: 0
    ],
    [headline: "Watch As  Megatron Ogles  Alien Kim Jong Un", headline_type: 4],
    [headline: "The 86 Rigged Animal Vines That All Tea Lovers Need In Their Lives", headline_type: 0],
    [
      headline: "Some Celebrity Took This Photograph. What Happened Next Will Give You All The Feels.",
      headline_type: 1
    ],
    [
      headline: "Donald Trump Discovered There Were Snakes On His Motherf*n' Plane. What Happened Next Is the Best Thing You'll See In The Whole Frigging World.",
      headline_type: 1
    ],
    [headline: "Watch As  Beavis Goes Near Gorgeous Kim Jong Un", headline_type: 4],
    [headline: "You Don't Want To Answer This Bozonic Leg Lamp", headline_type: 2],
    [headline: "Watch As This Honey Badger Sees This Fabulous Cranky Old Cat", headline_type: 4],
    [
      headline: "Seth Rogen Built Darth Vader Out Of Sex Toys. What Happened Next Will Make You Crap Your Pants.",
      headline_type: 2
    ],
    [headline: "Watch As This Short Fingered Vulgarian Steals  Coma Inducing Obi-Wan Kenobi", headline_type: 4],
    [headline: "The 71 Scruffy-Looking Friendships That You Ignore At Your Peril", headline_type: 0],
    [headline: "The 52 Hoopy Leg Lamps That Ran Yelping Like Scalded Dogs", headline_type: 0],
    [headline: "The 97 Time-Travelling Furries That Today's Kids Will Never Understand", headline_type: 0],
    [headline: "Watch As This Cranky Old Cat Tells Your Mom About  Time-Travelling Shia LaBeouf", headline_type: 4],
    [headline: "Watch As  Mrs. Claus Answers Some Unbelievable Florida Man", headline_type: 4],
    [
      headline: "The 5 Time-Travelling Microdown Patagonia Jackets That Remind Everyone of Used Car Salesmen",
      headline_type: 0
    ],
    [headline: "The 91 Haunted Ukeleles That Think They're Getting Away With It", headline_type: 0],
    [
      headline: "Lando Calrissian Washed His Car. What Happened Next Will Literally Scare You to Death. No Really, You'll Actually Die.",
      headline_type: 2
    ],
    [headline: "The 64 SAD Nerds That Truly Capture The Intensity of Dungeons and Dragons", headline_type: 0],
    [headline: "The 32 Smurfing Signs That Will Make Your Commute Less Crappy", headline_type: 0],
    [headline: "The 48 Alien Americans That Aren't Poop", headline_type: 0],
    [headline: "Watch As This Short Fingered Vulgarian Runs Into  Crooked Ivanka Trump", headline_type: 4],
    [headline: "You Don't Want To Trick This HUGE Lover", headline_type: 2],
    [headline: "You Don't Want To Flee This Short-Fingered Mom", headline_type: 2],
    [headline: "The 95 Filthy Felonies That Prove San Francisco Blows Goats", headline_type: 0],
    [headline: "Watch As  Kellyann Conway Sniffs  Confused Kim Kardashian", headline_type: 4],
    [headline: "You Don't Want To Befriend This Boozy Virgin Ragequitter", headline_type: 2],
    [
      headline: "Steve Bannon Saw A Bee. What Happened Next Will Warm the Cockles of Your Heart. Whatever That Means.",
      headline_type: 1
    ],
    [headline: "The 67 X-Rated Short-Fingered Vulgarians That Are a Worse Threat Than Terrorism", headline_type: 0],
    [headline: "The 20 Bacon-Wrapped Circuses That Will Dogwalk You If You Don't Leave Them Alone", headline_type: 0],
    [headline: "The 31 Unbelievable Signs That Prove San Francisco Blows Goats", headline_type: 0],
    [headline: "The 52 Weird Snowflakes That Are The Bees Knees", headline_type: 0],
  ],
  on_conflict: :nothing
)

objects = [
            "Low-Carb Lunch",
            "Book",
            "Photo",
            "Movie",
            "Rumor",
            "Conspiracy Theory",
            "Sign",
            "Country",
            "City",
            "House",
            "Observation",
            "Interview Question",
            "Fashion Mistake",
            "Recycling Mistake",
            "Felony",
            "Stunning Things",
            "Reason",
            "Idea",
            "Secret",
            "Explanation",
            "Pachenko Game",
            "Fortune Teller",
            "Circus",
            "Brain Hack",
            "Life Hack",
            "Pug Moment",
            "Squad Goal",
            "Your Face",
            "Kiss",
            "Sex Toy"
          ]
          |> Enum.map(fn name -> [name: name] end)
Repo.insert_all(Noun, objects, on_conflict: :nothing)

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
           "Your Mom",
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
                ]
                |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true] end)
Repo.insert_all(Noun, agents_proper, on_conflict: :nothing)


season_enums = %{
  :spring => 0,
  :summer => 1,
  :halloween => 2,
  :winter => 3
}

seasonal_noun_objects = %{
  :spring => [
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
    "Puppet",
    "Voodoo Doll",
    "Gravestone",
    "Grave",
    "Dead Body",
    "Ventroliquist Dummy"
  ],
  :winter => ["Jingle Bell", "Christmas Tree", "Dreidel", "Menorah", "Sock", "Gelt", "Latke",
    "Candle", "Candy Cane", "Stocking", "Snowflake", "Sleigh", "Christmas Carol", "Sugar Plum",
    "Nutcracker", "Plum Pudding", "Icicle", "Snowboard", "Hockey Puck", "Hockey Stick", "Ice Rink"]
}
seasonal_noun_objects
|> Map.keys
|> Enum.map (fn season_a ->
              names = Map.get(seasonal_noun_objects, season_a)
              %{^season_a => season} = season_enums
              changeset = Enum.map(names, fn name -> [name: name, is_agent: false, season: season] end)
              Repo.insert_all(Noun, changeset, on_conflict: :nothing)
             end)

seasonal_agents = %{
  :spring => ["Bunny", "Clown", "Rooster", "Nian", "Chick"],
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
    "Zombie"
  ],
  :winter => ["Yule", "Angel", "Elf", "Snowman", "Snow Woman"]
}
seasonal_agents
|> Map.keys
|> Enum.map (fn season_a ->
  names = Map.get(seasonal_noun_objects, season_a)
  %{^season_a => season} = season_enums
  changeset = names
              |> Enum.map(fn name -> [name: name, is_agent: true, season: season] end)
  Repo.insert_all(Noun, changeset, on_conflict: :nothing)
             end)

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
|> Map.keys
|> Enum.map (fn season_a ->
  names = Map.get(seasonal_noun_objects, season_a)
  %{^season_a => season} = season_enums
  changeset = names
              |> Enum.map(fn name -> [name: name, is_agent: true, is_proper: true, season: season] end)
  Repo.insert_all(Noun, changeset, on_conflict: :nothing)
             end)

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
|> Map.keys
|> Enum.map (fn season_a ->
  values = Map.get(seasonal_adj, season_a)
  %{^season_a => season} = season_enums
  changeset = values
              |> Enum.map(fn v -> [value: v, season: season] end)
  Repo.insert_all(Adjective, changeset, on_conflict: :nothing)
             end)


predicates = [
               "You Can't Even",
               "You Can't Literally Even",
               "Are Innocent-Looking Enough, But Actually Quite Dangerous",
               "Are A Hot Mess",
               "Mean Something Changed In the Matrix",
               "Taste Just Like Iguana",
               "Are Sponge-Worthy",
               "Post Way Too Many Selfies",
               "Could Double As A Demonic Lamp",
               "Will Ruin Your Life",
               "You Should Avoid At All Costs",
               "Will Make You Care About Climate Change",
               "We Hate",
               "We Love",
               "Will Make You Cry",
               "Will Make You Sick",
               "Prove You're a Sociopath",
               "Are Evidence of Aliens from Outer Space",
               "Are Probably True",
               "You Should Never Eat",
               "Mean Your Relationship is Doomed",
               "Signal He's Cheating",
               "Will Amaze You",
               "You Can't Trust",
               "Haunt Your Nightmares",
               "You Should Never Do In London",
               "Will Make You Shart",
               "Need A Place In Your Home",
               "Will Blow Your Mind",
               "Prove You're With The Right Person",
               "Mean You're Adopted",
               "All Tea Lovers Need In Their Lives",
               "Prove Teachers Can Have Fun Too",
               "You Have To Tell Your Mother About",
               "Nobody Knows About",
               "Californians Are Tired Of",
               "Prove San Francisco Blows Goats",
               "Single People Know Too Well",
               "Circuses Don't Want You To Know",
               "Rock You To Your Core",
               "Warm Your Heart",
               "You Should See Before You Die",
               "Mean You Have A Terminal Illness",
               "Prove You're A Complete Jerk",
               "Indicate You're Awesome",
               "Only Clumsy People Will Understand",
               "Only Beautiful People Will Understand",
               "Only Men Will Understand",
               "Only Women Will Understand",
               "Are Old And Busted",
               "You Ignore At Your Peril",
               "They Don't Want You to See",
               "Doctors Don't Want You To Know",
               "Remind Everyone of Used Car Salesmen",
               "The Government is Hiding from You",
               "Need To Stop Doing To Women",
               "Boldly Show How Different Life Is In the Two Koreas",
               "You Should Not Click On No Matter What",
               "People Make Every Day",
               "You Have Probably Already Done and Don't Know It",
               "Will Make You Punch Yourself In The Taint",
               "Have A Dark Side",
               "Have A Lot Of Rules For Women",
               "Think They're Getting Away With It",
               "Believe They Can Do Absolutely Everything",
               "Might Be Keeping A Dirty Secret",
               "Made My Stomach Turn",
               "Absolutely Deserve A Dirty Look In Response",
               "You Must Do To Get Your First Promotion",
               "Will Derail Your Career",
               "Has Ever Been Photographed",
               "Grew Up To Be Ugly",
               "Broke All The Stereotypes",
               "If You Don't Click It I'll Get Fired Please I Need My Job",
               "Really Know Where Their Towels Are",
               "Are The Bees Knees",
               "Were In The Military",
               "Are Invading Your Home",
               "Just Had A Baby",
               "Dressed In Drag",
               "Is Kinda Cool, But You Could Probably Skip It",
               "Are Mildly Amusing If You're Into That Kind Of Thing",
               "Made Me LQTM",
               "Will Make You Cry Out For Brain Bleach",
               "Don't Actually Exist",
               "Are Not Worth A Freakout",
               "Are a Worse Threat Than Terrorism",
               "Hijacked Military Social Media Accounts",
               "Just Landed A 15M Investment",
               "Broke The Internet",
               "Won The Internet",
               "Are Crazy... LIKE A FOX",
               "Can't Stop Smiling",
               "Have Unconfirmed Evidence of Election Hacking",
               "Are Trying Way Too Hard",
               "Are The Reason We Can't Have Nice Things"
             ]
             |> Enum.map(fn v -> [value: v] end)
Repo.insert_all(Predicate, predicates, on_conflict: :nothing)

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
                 "Most Disgusting"
               ]
               |> Enum.map(fn v -> [value: v] end)
Repo.insert_all(Superlative, superlatives, on_conflict: :nothing)

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
               "Trill",
               "SAD",
               "HUGE",
               "Tremendous",
               "Embarrassing",
             ]
             |> Enum.map(fn v -> [value: v] end)
Repo.insert_all(Adjective, adjectives, on_conflict: :nothing)


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

firsts = [
           "Signed A Petition",
           "Called This News Anchor Fat",
           "Flew Over A Pig Farm",
           "Was Tipped By A Girl",
           "Started Off Well",
           "Did a Study",
           "Made a Horrible Decision",
           "Gave A Homeless Person Some Money",
           "Washed His Car",
           "Saw A Kitten Drowning",
           "Took This Photograph",
           "Tried To Climb Mount Everest",
           "Woke Up To Find The House on Fire",
           "Sowed Some Magic Beans",
           "Was Getting Bombarded With Complaints",
           "Stumbled Upon An Abandoned House In the Woods",
           "Found A Couple of Old Oak Slabs",
           "Finally Solved That Weird Puzzle Box In the Attic",
           "Picked Up Some Hitchhikers",
           "Sees For the First Time What A Jerk They Are",
           "Discovered Snakes On His Motherflippin' Plane",
           "Suffered Spontaneous Internal Combustion",
           "Found a Mysterious Board Game And Decided to Play It",
           "Cut a Cabbage in Half",
           "Told Us You Farted",
           "Saw These Boxes On A Lawn",
           "Wanted To Be A Princess",
           "Took On Racism With Cupcakes",
           "Had Given Up On Human Connection"
         ]
         |> Enum.map(fn v -> [value: v] end)
Repo.insert_all(First, firsts, on_conflict: :nothing)


nexts = [
          ". . . Please, We Really Need The Clickthroughs",
          "Is So Worth Your Time",
          "Is A Bit of All Right",
          "Will Stun You",
          "Will Warm the Cockles of Your Heart. Whatever That Means",
          "Might Be The Cutest Thing In the Universe. Seriously",
          "Will Blow Your Mind",
          "Will Give You the Heebie-Jeebies",
          "Will Tingle Your Naughty Bits",
          "Will Make You Cry",
          "Will Make Your Life Worth Living",
          "Will Allow You To Die Happy",
          "Will Creep You Right Out",
          "Will Literally Scare You to Death. No Really, You'll Actually Die",
          "Will Make You Crap Your Pants",
          "Blew the Whole City Away",
          "Is Disturbing",
          "Made a Lot of Scientists Very, Very Upset",
          "Is All Your Fault",
          "Is All Our Fault",
          "Will School You To The Max",
          "Is the Best Thing We've Seen All Year",
          "Is the Best Thing You'll See In The Whole Frigging World",
          "Will Make All Your Other Life Experiences Pale In Comparison And You'll Just Want to End It All Immediately",
          "Will Surprise You",
          "Is Leaving Billions of People Homeless and Starving",
          "Made Me -- And Millions of Women -- Feel Great",
          "Will Shock You!!! . . . Will It Though?",
          "You'll Never Forget",
          "Is Probably Not Worth Your Time",
          "Will Make You Wish You Could Demand That Two Minutes of Your Life Back",
          "Is Straight From Your Worst Nightmare. Trust Me",
          "Is Hysterical",
          "Might Be The Cutest Thing In the Universe. Seriously",
          "Will Warm the Cockles of Your Heart. Whatever That Means",
          "Kylo Ren Would Be Proud Of",
          "Gets More Epic By The Nanosecond",
          "Will Be Your New Favorite Acid Trip",
          "...Just Click It Already",
          "Has A Tragic Twist",
          "Is Really Dumb, But You'll Click Anyway",
          "Will Make You Realize You Should Get Out More Often",
          "Will Render You Completely Unable To Get Any Work Done",
          "Is Yet Another Internet Rabbit Hole",
          "Will Give You All The Feels",
          "Cannot Be Unseen",
          "Is A Train Wreck",
          "Broke The Internet",
          "Won The Internet",
          "Made Me LQTM",
          "Will Make You Cry Out For Brain Bleach",
          "Will Have You In Tears",
          "Will Make You Cry Blood",
          "Is Kleenex-Worthy",
          "Is Binge-Worthy",
          "Is Splurge-Worthy",
          "Is So Cringe",
          "Is Testing My Faith",
          "Will Make You Be Like...WHOA",
          "Does Not Live Up To Anyone's Expectations",
          "Is A Complete Disappointment",
          "Is Utterly Boring, But We Know You Have Nothing Better To Do Right Now",
          "Shows Why We Can't Have Nice Things"
        ]
        |> Enum.map(fn v -> [value: v] end)
Repo.insert_all(Next, nexts, on_conflict: :nothing)

templates = [
  "Some {person_or_animal} Tried To {verb} Mount Everest. What Happened Next Has {adjective} {plural_person_or_animal} Rioting",
  "The {number} {adjective} {plural_noun} That {verb} Your {noun}",
  "When {celebrity} {past_tense_verb} A {adjective} {noun}, I {past_tense_verb} my {noun}",
  "You {adverb} Don't Want to {verb} This {adjective} {noun}",
  "This {adjective} {noun} That {past_tense_verb} a {noun} Can't Be Unseen",
  "{person_name} Wants to {verb} Your {noun}. What Could Go Wrong?",
  "{celebrity} {adverb} Wishes Everyone Would Stop {verb}ing So {adjective}",
  "My {noun} Stopped {verb}ing, And Now I Can't Stop {verb}ing my {noun}",
]
