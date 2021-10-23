# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BuzzKillfeed.Repo.insert!(%BuzzKillfeed.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias BuzzKillfeed.Seeds

Seeds.Adjectives.seed()
Seeds.Firsts.seed()
Seeds.Headlines.seed()
Seeds.Nouns.seed()
Seeds.Nexts.seed()
Seeds.Predicates.seed()
Seeds.Superlatives.seed()
Seeds.Templates.seed()
Seeds.Verbs.seed()


