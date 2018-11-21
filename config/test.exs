use Mix.Config

# We run a server during test for Wallaby integration testing.
config :buzz_killfeed, BuzzKillfeedWeb.Endpoint,
  http: [port: 4001],
  server: true,
  secret_key_base: "0123456789012345678901234567890123456789012345678901234567890123456789"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :buzz_killfeed, BuzzKillfeed.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "buzz_killfeed_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :buzz_killfeed, :sql_sandbox, true
