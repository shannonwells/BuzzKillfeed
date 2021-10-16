defmodule BuzzKillfeed.Seeds.FirstSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.First

  def seed() do
    firsts = [
               "Built Darth Vader Out Of Mud Bricks",
               "Called This News Anchor Fat",
               "Cut a Cabbage in Half",
               "Did a Study",
               "Didn't Listen When The Ghosts Said 'GET OUT'",
               "Discovered His Eyebrows",
               "Discovered Snakes On His Motherflippin' Plane",
               "Flew Over A Pig Farm",
               "Found A Couple of Old Oak Slabs",
               "Found a Mysterious Board Game And Decided to Play It",
               "Gave A Homeless Person Some Money",
               "Had Given Up On Human Connection",
               "Made a Horrible Decision",
               "Picked Up Some Hitchhikers",
               "Pulled A Brilliant April Fool's Prank",
               "Saw A Kitten Drowning",
               "Saw A Murder Hornet",
               "Saw A Weeping Angel",
               "Saw For the First Time What A Jerk They Are",
               "Saw These Boxes On A Lawn",
               "Signed A Petition",
               "Solved A Weird Puzzle Box In the Attic",
               "Sowed Some Magic Beans",
               "Started Off Well",
               "Stepped Into The Light",
               "Stumbled Upon An Abandoned House In the Woods",
               "Suffered Spontaneous Internal Combustion",
               "Took On Racism With Cupcakes",
               "Took This Photograph",
               "Tried To Climb Mount Everest",
               "Tried to Buy a Fridge",
               "Tried to Make Love to a Fire Station",
               "Wanted To Be A Princess",
               "Was Forced to Leave a Night Club",
               "Was Found Under A Bed",
               "Was Getting Bombarded With Complaints",
               "Was Totally Obsessed With Cheese Plates",
               "Washed His Car",
               "Went To His Senior Prom",
               "Woke Up To Find The House on Fire",
             ]
             |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(First, firsts, on_conflict: :nothing)

  end
end
