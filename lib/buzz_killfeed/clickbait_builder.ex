defmodule BuzzKillfeed.ClickbaitBuilder do
  import BuzzKillfeed.RepoHelpers

  #  ["listicle", "suspense", "temptation", "confession", "voyeurism"]
  def build_listicle do
    items = Enum.random(1..99)
    noun = random_noun([is_proper: false]).name
    adj = random_adjective().value
    pred = random_predicate().value
    "The #{items} #{adj} #{Inflex.pluralize(noun)} That #{pred}"
  end

  def build_suspense do
    first = random_first().value
    next = random_next().value
    noun = random_noun([is_agent: true])
    "#{particle_for(noun.name, noun)} #{noun.name} #{first}. "
      <> "What Happened Next #{next}"
  end

  def build_confession do
    noun = random_noun()
    adj = random_adjective()
    verb = random_verb()
    options = %{:tense => "past", :person => "first", :plurality => "singular"}
    sub_obj = verb.value
              |> Verbs.conjugate(options)
    method = Enum.random(["Why", "How", "The Day", "I Wish"])
    "#{method} I #{sub_obj} #{particle_for(adj.value, noun)} #{adj.value} #{noun.name}"
  end

  def build_temptation do
    adj = random_adjective()
    verb = random_verb()
    noun = random_noun([is_proper: false])
    "#{random_temptation} #{verb.value} This #{adj.value} #{noun.name}"
  end

  defp random_temptation do
    Enum.random([
      "You Don't Want To",
      "Bet You Can't",
      "You Wish You Could",
      "Just Try Not To",
      "Everyone's Scared To",
      "You'd Better Not",
    ])
  end

  def build_voyeurism do
    noun = random_noun(is_agent: true)

    options = %{:tense => "present", :person => "third", :plurality => "singular"}
    sub_obj = random_verb().value |> Verbs.conjugate(options)

    adj = random_adjective().value
    noun2 = random_noun()

    "Watch As #{particle_for(noun.name, noun)} #{noun.name} #{sub_obj} #{particle_for(adj,noun2)} #{adj} #{noun2.name}"
  end


  defp particle_for(adj, noun) when (noun.is_proper), do: ""
  defp particle_for(adj, noun) do
    particle = Enum.random(["A", "The", "This", "Some"])
    cond do
      (particle === "A" && String.match?(adj, ~r/\A[aeiou]/i)) -> "An"
      true -> particle
    end
  end

end
