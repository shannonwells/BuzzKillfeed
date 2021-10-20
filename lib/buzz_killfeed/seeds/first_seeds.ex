defmodule BuzzKillfeed.Seeds.FirstSeeds do
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.First

  def seed() do
    firsts = [
               "Applied For A Supposed Housekeeping Job",
               "Backed Away Into The Shrubbery",
               "Broke All Previous Records",
               "Built Darth Vader Out Of Mud Bricks",
               "Called This News Anchor Fat",
               "Cut A Cabbage in Half",
               "Didn't Listen When The Ghosts Said 'GET OUT'",
               "Discovered Their Eyebrows",
               "Discovered Snakes On Their Motherflippin' Plane",
               "Finally Looked At Their Travel Photos",
               "Flew Over An Emu Farm",
               "Found A Couple of Old Oak Slabs",
               "Found a Mysterious Board Game And Decided to Play It",
               "Gave A Homeless Person Some Money",
               "Got A Little Too Into Trains",
               "Had Given Up On Human Connection",
               "Had Never Played Candyland",
    "Jumped On A Table And Started Dancing",
                "Lost At Monopoly",
               "Picked Up Some Hitchhikers",
               "Pulled A Weird April Fool's Prank",
               "Dropped A Hot New DnB Track",
               "Saw A Kitten Drowning",
               "Found A Nest of Murder Hornets",
               "Saw A Weeping Angel",
               "Saw For the First Time What A Jerk They Are",
               "Saw These Boxes On A Lawn",
               "Signed A Petition",
               "Solved A Weird Puzzle Box In the Attic",
               "Sowed Some Magic Beans",
               "Started Off Well Enough",
               "Stepped Into The Light",
               "Stumbled Upon An Abandoned House In the Woods",
               "Suffered Spontaneous Internal Combustion",
               "Took On Racism With Cupcakes",
               "Took A Seemingly Innocent Photograph",
    "Learned To Cha-Cha",
    "Took Bagpipe Lessons",
               "Tried To Climb Mount Everest",
               "Tried to Buy a Fridge",
               "Tried to Make Love to a Fire Station",
               "Wanted To Win At 'Hungry Hungry Hippos' For Once",
               "Wanted To Be A Princess",
               "Was Forced to Leave a Dance Club",
               "Was Found Under A Bed",
               "Was Getting Bombarded With Complaints",
               "Became Obsessed With Charcuterie",
               "Thought They Were Going To A Class Reunion",
               "Woke Up To Find The House on Fire",
             ]
             |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(First, firsts, on_conflict: :nothing)

  end
end
