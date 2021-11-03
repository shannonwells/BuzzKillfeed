defmodule BuzzKillfeed.RepoHelpers do
  @moduledoc """
  Helpers for getting records.
  """
  import Ecto.Query, warn: true
  import Ecto.Changeset
  alias BuzzKillfeed.Repo
  alias BuzzKillfeed.Adjective
  alias BuzzKillfeed.First
  alias BuzzKillfeed.Headline
  alias BuzzKillfeed.Noun
  alias BuzzKillfeed.Next
  alias BuzzKillfeed.Predicate
  alias BuzzKillfeed.Template
  alias BuzzKillfeed.Verb

  # # # # # # # # # Random record fetching
  defp random_record(filter_tuple, table) do
    num_records = table
                  |> where(^filter_tuple)
                  |> select(count())
                  |> Repo.one()
    offset = Enum.random(1..num_records) - 1
    table
    |> where(^filter_tuple)
    |> offset(^offset)
    |> limit(1)
    |> Repo.one()
  end

  def random_noun() do
    random_record([], Noun)end
  def random_noun(filter_tuple) do
    random_record(filter_tuple, Noun)end

  def random_headline() do
    random_headline([]) end
  def random_headline(filter_tuple) do
    random_record(filter_tuple, Headline) end

  def random_template() do
    random_template([]) end
  def random_template(filter_tuple) do
    random_record(filter_tuple, Template) end

  def random_adjective() do
    random_record([], Adjective) end
  def random_adjective(filter_tuple) do
    random_record(filter_tuple, Adjective) end

  def random_first() do
    random_record([], First) end
  def random_first(filter_tuple) do
    random_record(filter_tuple, First) end

  def random_next() do
    random_record([], Next) end
  def random_next(filter_tuple) do
    random_record(filter_tuple, Next) end

  def random_predicate() do
    random_record([], Predicate) end
  def random_predicate(filter_tuple) do
    random_record(filter_tuple, Predicate) end

  def random_verb() do
    random_record([], Verb) end
  def random_verb(filter_tuple) do
    random_record(filter_tuple, Verb) end

  ######

  # # # # # # # #  HEADLINES

  @doc """
  Returns top N headlines in descending order of view count,
  then by updated_at
  """
  def bestof_headlines do
    Headline
    |> order_by(desc: :views)
    |> limit(10)
    |> Repo.all()
  end

  @doc """
    Returns most recent headlines as a lazy Enumerable
  """
  def freshest_headlines do
    Headline
    |> order_by(desc: [:views, :created_at])
    |> limit(10)
    |> Repo.all()
  end

  @doc """
    returns a headline by id.
  """
  def get_headline!(id), do: Repo.get!(Headline, id)

  def create_headline(attrs \\ %{}) do
    %Headline{}
    |> Headline.changeset(attrs)
    |> Repo.insert!()
  end

  def get_or_create_headline(attrs \\ %{}) do
    Repo.get_by(Headline, headline: attrs["headline"]) || create_headline(attrs)
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

  # # # # getters

  def get_template!(id) do
    Repo.get!(Template, id) end

  def get_first!(id) do
    Repo.get!(First, id) end

  @doc """
  Gets a single noun by id.
  Raises `Ecto.NoResultsError` if the noun does not exist.
  """
  def get_noun!(id) do
    Repo.get!(Noun, id) end

  #### Creators
  def create_template(attrs \\ %{}) do
    %Template{}
    |> Template.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Creates a noun. See create_headline.
  """
  def create_noun(attrs \\ %{}) do
    %Noun{}
    |> Noun.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
    Creates a predicate. See create_headline.
  """
  def create_predicate(attrs \\ %{}) do
    %Predicate{}
    |> Predicate.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
    Creates an adjective. See create_headline.
  """
  def create_adjective(attrs \\ %{}) do
    %Adjective{}
    |> Adjective.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
    Creates a next. See create_headline.
  """
  def create_next(attrs \\ %{}) do
    %Next{}
    |> Next.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
    Creates a first. See create_headline.
  """
  def create_first(attrs \\ %{}) do
    %First{}
    |> First.changeset(attrs)
    |> Repo.insert()
  end


  @doc """
    Creates a verb. See create_headline.
  """
  def create_verb(attrs \\ %{}) do
    %Verb{}
    |> Verb.changeset(attrs)
    |> Repo.insert()
  end

  def bump_headline_view_count(id) do
    h = get_headline!(id)
    Headline.changeset(h, %{views: h.views+1})
    |> Repo.update()
  end
end
