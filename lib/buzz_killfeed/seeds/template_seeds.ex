defmodule BuzzKillfeed.Seeds.Templates do
  alias BuzzKillfeed.Template
  alias BuzzKillfeed.Repo

  def seed() do
    templates = BkfSeeds.Template.objects()
    |> Enum.map(fn v -> [value: v] end)
    Repo.insert_all(Template, templates, on_conflict: :nothing)
  end
end
