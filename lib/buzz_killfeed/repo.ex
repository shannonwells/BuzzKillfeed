defmodule BuzzKillfeed.Repo do
  use Ecto.Repo,
      otp_app: :buzz_killfeed,
      adapter: Ecto.Adapters.Postgres
  import Ecto.Query
  alias BuzzKillfeed.Adjective
  alias BuzzKillfeed.First
  alias BuzzKillfeed.Noun
  alias BuzzKillfeed.Predicate
  alias BuzzKillfeed.Headline

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    pool_size = String.to_integer(System.get_env("POOL_SIZE") || "10")
    database_url = System.get_env("DATABASE_URL")

    opts = opts
    |> Keyword.put(:url, database_url)
    |> Keyword.put(:pool_size, pool_size)

    {:ok, opts}
  end
 end
