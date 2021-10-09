defmodule FillInTheBait.FillInTheBaitViewTest do
  use BuzzKillfeedWeb.ConnCase, async: true

  import FillInTheBait.FillInTheBaitView
  describe "zip_template_words" do
    @templates  [
      "Some {person_or_animal} Tried To {verb} Mount Everest. What Happened Next Has {adjective} {plural_person_or_animal} Rioting",
      "The {number} {adjective} {plural_noun} That {verb} Your {noun}",
      "When {celebrity} {past_tense_verb} A {adjective} {noun}, I {past_tense_verb} my {noun}",
      "You {adverb} Don't Want to {verb} This {adjective} {noun}",
      "This {adjective} {noun} That {past_tense_verb} a {noun} Can't Be Unseen",
      "{person_name} Wants to {verb} Your {noun}. What Could Go Wrong?",
      "{celebrity} {adverb} Wishes Everyone Would Stop {verb}ing {adjective} {noun}",
      "My {noun} Stopped {verb}ing, And Now I Can't Stop {verb}ing my {noun}",
    ]


    test "works on #6" do
      tmpl = Enum.fetch!(@templates,5)
      words = ["Jerry", "eat", "face"]
      res = zip_template_words(tmpl, words)
      # good enough for now.
      assert res == "Jerry Wants to Eat Your Face . What Could Go Wrong?"
    end

    test "works on #2" do
      tmpl = Enum.fetch!(@templates,1)
      words = ["99", "goofy", "bananas","bounce","bunny"]
      res = zip_template_words(tmpl, words)
      # good enough for now.
      assert res == "The 99 Goofy Bananas That Bounce Your Bunny "
    end

    test "works on #7" do
      tmpl = Enum.fetch!(@templates,6)
      words = ["Mitch McConnell", "really", "steal","his dank","memes"]
      res = zip_template_words(tmpl, words)
      # TODO: fix this stupidity of String.capitalize :P
      assert res == "Mitch Mcconnell Really Wishes Everyone Would Stop Stealing His Dank Memes "
    end
  end
end
