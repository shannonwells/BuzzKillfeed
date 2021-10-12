defmodule FillInTheBait.FillInTheBaitView do
  use BuzzKillfeedWeb, :view

  def zip_template_words(template, wordlist) do
    template_words = template |> String.split(~r/\{\w+\}/)
    user_words_capped = wordlist |> Enum.map(fn w -> capitalize_properly(w) end)

    cond  do
      Enum.count(template_words) > Enum.count(user_words_capped) -> zip_it(template_words,user_words_capped)
      true -> zip_it(user_words_capped, template_words)
    end
    |> String.trim_trailing(" ")
  end

  defp zip_it(longer, shorter) do
    Enum.zip_reduce(longer,shorter,"",
            fn x,y,acc -> acc <> x <> y end)
      <> " "
      <> Enum.fetch!(longer, -1)
  end

  defp capitalize_properly(word_or_words) do
    cond do
      String.match?(word_or_words, ~r/\s+/) -> capitalize_multiword(word_or_words)
      true -> String.capitalize(word_or_words)
    end

  end

  defp capitalize_multiword(words) do
    words
      |> String.split(~r/\s+/)
      |> Enum.map(fn x -> String.capitalize(x) end)
      |> Enum.join(" ")
  end
end
