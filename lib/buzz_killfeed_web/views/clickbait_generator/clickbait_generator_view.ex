defmodule ClickbaitGenerator.ClickbaitGeneratorView do
  use BuzzKillfeedWeb, :view
  def button_types() do
    ["listicle", "suspense", "temptation", "confession", "voyeurism"]
  end

  def button_class(button_type, headline_type) do
     "sparkley button button--clickbait round "
     <> get_active_class(button_type,headline_type) <> " "
     <> button_color(button_type)
  end

  def get_active_class(button_type, headline_type) do
    if String.equivalent?(button_type,headline_type) do
      "active"
    else
      ""
    end
  end

  #  icon = list_type_icon(button_type)
  def button_icon(button_type) do
    case button_type do
      "listicle" -> "✪"
      "suspense" -> "⟳"
      "temptation" -> "⚖"
      "confession" -> "☠"
      "voyeurism" -> "☻"
    end

  end

  #  color = list_type_color(button_type)
  defp button_color(button_type) do
    case button_type do
      "listicle" -> "orange"
      "suspense" -> "pink"
      "temptation" -> "blue"
      "confession" -> "green"
      "voyeurism" -> "orange"
    end
  end
end
