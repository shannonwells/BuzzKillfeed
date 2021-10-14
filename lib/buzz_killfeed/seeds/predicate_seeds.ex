defmodule BuzzKillfeed.Seeds.PredicateSeeds do
  alias BuzzKillfeed.Predicate
  alias BuzzKillfeed.Repo

  def seed() do
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

  end
end
