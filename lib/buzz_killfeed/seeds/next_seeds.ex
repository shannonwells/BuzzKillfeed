defmodule BuzzKillfeed.Seeds.NextSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Next


  def seed do
    nexts = [
      "...Please, We Really Need The Clickthroughs",
      "Is A Bit of All Right",
      "Will Stun You",
      "Will Warm the Cockles of Your Heart. Whatever That Means",
      "Might Be The Cutest Thing In the Universe. Seriously!",
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
      "Is Truly Disturbing",
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
      "Fellow Criminals Would Be Proud Of",
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
      "Is Binge-Worthy",
      "Is So Cringey You'll Want To Look Away, BUT YOU CAN'T",
      "Is Testing My Faith",
      "Will Make You Be Like...WHOA",
      "Does Not Live Up To Anyone's Expectations",
      "Is A Complete Disappointment",
      "Is Utterly Boring, But We Know You Have Nothing Better To Do Right Now",
      "Shows Why We Can't Have Nice Things"
    ]
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Next, nexts, on_conflict: :nothing)

  end
end
