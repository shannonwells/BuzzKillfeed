defmodule BuzzKillfeed.Seeds.FirstSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.First

  def seed() do
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

  end
end
