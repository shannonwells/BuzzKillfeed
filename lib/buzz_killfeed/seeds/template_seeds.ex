defmodule BuzzKillfeed.Seeds.TemplateSeeds do
  alias BuzzKillfeed.Template
  alias BuzzKillfeed.Repo

  def seed() do
    templates = [
      "Some {person_or_animal} Tried To {verb} Mount Everest. What Happened Next Has {adjective} {plural_person_or_animal} Rioting",
      "The {number} {adjective} {plural_noun} That {verb} Your {noun}",
      "When {famous_figure} {past_tense_verb} A {adjective} {noun}, I Lost My {noun}",
      "This {adjective} {noun} That {past_tense_verb} A {noun} Can't Be Unseen",
      "{famous_figure} Wants To {verb} Your {noun}. What Could Go Wrong?",
      "{famous_figure} {adverb} Wishes Everyone Would Stop {verb_+_ing} So {adverb}",
      "My {noun} Stopped {verb}ing, And Now I Can't Stop {verb}ing my {noun}",
      "{famous_figure} Says \"I'm {adverb} {adjective} I Missed My Big Chance To {verb} Before I {verb}\"",
      "Poll: How Many Times Would You {verb} This {noun} If We Gave You {number} {plural_noun}?",
      "It Might've Been {famous_figure}'s {noun}, but {famous_figure} Stole The Show With Their {adjective} {noun}",
      "{number} {adjective} {noun} Tricks From A Former {noun} Painter",
      "Can {adjective} {noun} Discolor Your Underwear? We Asked {number} {plural_noun} for Answers",
      "This {number} {time_period} Meditation From {famous_figure} Had Me in {plural_noun} — in a Good Way",
      "These {number} {adjective} {noun} {season} Dresses That'll Look {adjective} All The Way To {holiday}",
      "This {adjective} Hack Will {adverb} Change The Way You {verb} {plural_noun} - No Peeler Necessary!",
      "When In {place}, Never {verb} These {number} {adjective} Things, Or You'll Be {adjective}",
      "{brand_name} Fitness Has Revived the Annual {number} {time_period} Workout Challenge — Our {plural_noun} Are {verb_+_ing} Already",
      "This {type_of_person} Stumbled Upon A {adjective} {noun} in {place}. What Happened Next Made Me -- And Millions of {plural_noun} -- Feel {adjective}",
    ]
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Template, templates, on_conflict: :nothing)
  end
end
