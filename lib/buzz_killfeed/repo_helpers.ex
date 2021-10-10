defmodule BuzzKillfeed.RepoHelpers do
  @moduledoc """
  Helpers for getting records.
  """
  #    import Ecto.Query, warn: false
  import Ecto.Query, warn: true

  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Headline
  alias BuzzKillfeed.Noun
  alias BuzzKillfeed.Template
  alias BuzzKillfeed.Predicate
  alias BuzzKillfeed.Adjective
  alias BuzzKillfeed.First

  # # # # # # # # # Random record fetching
  defp random_record(filter_tuple, table) do
    num_records = table
                  |> where(^filter_tuple)
                  |> select(count())
                  |> Repo.one()
    record_id = Enum.random(1..num_records)
    Repo.get!(table, record_id)
  end

  def random_noun() do random_record([], Noun)end
  def random_noun(filter_tuple) do random_record(filter_tuple, Noun)end

  def random_headline() do random_headline([]) end
#  def random_headline(filter_tuple) do random_record(filter_tuple, Headline) end
  def random_headline(filter_tuple) do
    num_records = Headline
                  |> where(^filter_tuple)
                  |> select(count())
                  |> Repo.one()
    Repo.get!(Headline, Enum.random(1..num_records))
  end

  def random_adj(filter_tuple) do random_record(filter_tuple, Adjective) end
  def random_first(filter_tuple) do random_record(filter_tuple, First) end
  def random_pred(filter_tuple) do random_record(filter_tuple, Predicate) end

  ######

  # # # # # # # #  HEADLINES

  @doc """
  Returns all headlines
  """
  def list_headlines do
    Repo.all(Headline)
  end


  @doc """
  Gets a single headline by id.
  Raises `Ecto.NoResultsError` if the headline does not exist.
  """
  def get_headline!(id) do Repo.get!(Headline, id) end

  @doc """
  Creates a headline.
  ## Examples
      iex> create_headline(%{headline: value})
      {:ok, %headline{}}

      iex> create_headline(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_headline(attrs \\ %{}) do
    %Headline{}
    |> Headline.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Deletes a headline by id.
  ## Example
      iex> delete_headline_by_id(headline)
      {1, nil}
  """
  def delete_headline_by_id!(id) do
    from(h in Headline, where: h.id == ^id)
    |> Repo.delete_all
  end

  @doc """
  Deletes a headline.
  ## Examples
      iex> delete_article(headline)
      {:ok, %Headline{}}

      iex> delete_article(headline)
      {:error, %Ecto.Changeset{}}

  """
  def delete_headline(%Headline{} = headline) do
    Repo.delete(headline)
  end

  # # # # # # # #  TEMPLATES


  def get_template!(id) do
    Repo.get!(Template, id) end

  def create_template(attrs \\ %{}) do
    %Template{}
    |> Template.changeset(attrs)
    |> Repo.insert()
  end

  # # # # # # # #  NOUNS
  @doc """
  Gets a single noun by id.
  Raises `Ecto.NoResultsError` if the noun does not exist.
  """
  def get_noun!(id) do
    Repo.get!(Noun, id) end

  @doc """
  Creates a noun.
  ## Examples
      iex> create_noun(%{noun: value})
      {:ok, %noun{}}

      iex> create_noun(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_noun(attrs \\ %{}) do
    %Noun{}
    |> Noun.changeset(attrs)
    |> Repo.insert()
  end

end
