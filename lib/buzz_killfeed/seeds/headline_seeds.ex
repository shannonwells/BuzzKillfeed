defmodule BuzzKillfeed.Seeds.HeadlineSeeds do
  alias BuzzKillfeed.Headline
  alias BuzzKillfeed.Repo

  def seed do
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
          headline: "Donald Trump Discovered There Were Snakes On His Motherf*n' Plane. What Happened Next Is the Best Thing You'll See In Your Whole Life.",
          headline_type: 1
        ],
        [headline: "Watch As  Beavis Goes Near Gorgeous Kim Jong Un", headline_type: 4],
        [headline: "You Don't Want To Answer This Bozonic Leg Lamp", headline_type: 2],
        [headline: "Watch As This Honey Badger Sees This Fabulous Cranky Old Cat", headline_type: 4],
        [
          headline: "Seth Rogen Built Darth Vader Out Of Poodles. What Happened Next Will Make You Crap Your Pants.",
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
        [headline: "Bet You Can't HODL This Yuletide Gelt", headline_type: 2],
      ],
      on_conflict: :nothing
    )
  end
end
