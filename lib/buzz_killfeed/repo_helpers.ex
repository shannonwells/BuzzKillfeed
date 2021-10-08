defmodule BuzzKillfeed.RepoHelpers do
  @moduledoc """
  Helpers for getting records.
"""
  #    import Ecto.Query, warn: false
  import Ecto.Query, warn: true

#  alias TestApp.Repo
  alias BuzzKillfeed.Repo

  #  alias TestApp.Accounts.Headline
  alias BuzzKillfeed.Headline


  @doc """
  Returns the list of articles.

  ## Examples

      iex> list_articles()
      [%Headline{}, ...]

  """
  def list_headlines do
    Repo.all(Headline)
  end


  @doc """
  Gets a single headline.
  Raises `Ecto.NoResultsError` if the headline does not exist.
  ## Examples
      iex> get_headline!(123)
      %headline{}

      iex> get_headline!(456)
      ** (Ecto.NoResultsError)
  """
  def get_headline!(id) do  Repo.get!(Headline, id) end

  @doc """
  Creates a headline.
  Returns { :ok, %{Headline}} on success
  Returns {:error, %Ecto.Changeset{}} on failure
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
  Deletes a headline.
  ## Examples

      iex> delete_headline(headline)
      {:ok, %headline{}}

      iex> delete_headline(headline)
      {:error, %Ecto.Changeset{}}
  """
  def delete_headline_by_id!(id) do
    from(h in Headline, where: h.id == ^id) |> Repo.delete_all
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
end
