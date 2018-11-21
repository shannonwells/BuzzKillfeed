defmodule BuzzKillfeed.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias BuzzKillfeed.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import BuzzKillfeedWeb.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(BuzzKillfeed.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(BuzzKillfeed.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(BuzzKillfeed.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
