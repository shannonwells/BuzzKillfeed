defmodule BuzzKillfeed.Template do
  use Ecto.Schema

  import Ecto.Changeset

  schema "templates" do
    field :value, :string
  end

  @doc false
  def changeset(template, attrs) do
    template
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> unique_constraint(:value)
  end

  @doc """
  Gets a single template.
  Raises `Ecto.NoResultsError` if the template does not exist.
  ## Examples
      iex> get_template!(123)
      %template{}

      iex> get_template!(456)
      ** (Ecto.NoResultsError)
  """
  def get_template!(id), do: Repo.get!(Template, id)

end
