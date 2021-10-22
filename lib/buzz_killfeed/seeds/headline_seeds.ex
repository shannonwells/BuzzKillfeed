defmodule BuzzKillfeed.Seeds.Headlines do
  alias BuzzKillfeed.Headline
  alias BuzzKillfeed.Repo

  def seed do
    Repo.insert_all(
      Headline, BkfSeeds.Headline.objects(), on_conflict: :nothing
    )
  end
end
