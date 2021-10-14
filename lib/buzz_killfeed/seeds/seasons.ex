defmodule BuzzKillfeed.Seeds.Seasons do
  @season_enums %{:spring => 0, :summer => 1, :halloween => 2, :fall => 3, :winter => 4}
  def list do
    @season_enums
  end
end
