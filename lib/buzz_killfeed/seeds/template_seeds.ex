defmodule BuzzKillfeed.Seeds.TemplateSeeds do
  alias BuzzKillfeed.Template
  alias BuzzKillfeed.Repo

  def seed() do
    templates = [
      "Some {type_of_person_or_animal} Tried To {verb} Mount Everest. What Happened Next Has {adjective} {plural_person_or_animal} Rioting",
      "The {number} {adjective} {plural_noun} That {verb} Your {noun}",
      "When {celebrity} {past_tense_verb} A {adjective} {noun}, I {past_tense_verb} my {noun}",
      "You {adverb} Don't Want to {verb} This {adjective} {noun}",
      "This {adjective} {noun} That {past_tense_verb} A {noun} Can't Be Unseen",
      "{person_name} Wants To {verb} Your {noun}. What Could Go Wrong?",
      "{person_name} {adverb} Wishes Everyone Would Stop {verb}ing So {adjective}",
      "My {noun} Stopped {verb}ing, And Now I Can't Stop {verb}ing my {noun}",
      "{celebrity} Says \"I'm {adverb} {adjective} I Missed My Big Chance To {verb} Before I {verb}\"",
      "Poll: How Many Times Would You {verb} This {noun} If We Gave You {number} {plural_noun}?",
      "It Might've Been {celebrity}'s {noun}, but {celebrity} Stole   The Show With Their {adjective} {noun}",
      "{number} {adjective} {noun} Tricks From A Former {noun} Painter",
      "Can {adjective} {noun} Discolor Your Underwear? We Asked {number} {plural_noun} for Answers",
      "This {number} {time_period} Meditation From {celebrity} Had Me in {plural_noun} — in a Good Way",
      "These {number} {adjective} {noun} {season} Dresses That'll Look {adjective} All The Way To {}",
      "This {adjective} Hack Will {adverb} Change The Way You {verb} {plural_noun} - No Peeler Necessary!",
      "{brand_name} Fitness Has Revived the Annual {adjective} {time_period} Workout Challenge — Our {plural_noun} Are {verb}ing Already",
      "{number} {noun} Patch Captions That Are Bound To Put You In A {adjective} Mood",
    ]
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Template, templates, on_conflict: :nothing)
  end
end
