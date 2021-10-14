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

BuzzKillfeed.Seeds.AdjectiveSeeds.seed()
BuzzKillfeed.Seeds.FirstSeeds.seed()
BuzzKillfeed.Seeds.HeadlineSeeds.seed()
BuzzKillfeed.Seeds.NounSeeds.seed()
BuzzKillfeed.Seeds.NextSeeds.seed()
BuzzKillfeed.Seeds.PredicateSeeds.seed()
BuzzKillfeed.Seeds.SuperlativeSeeds.seed()
BuzzKillfeed.Seeds.TemplateSeeds.seed()
BuzzKillfeed.Seeds.VerbSeeds.seed()


