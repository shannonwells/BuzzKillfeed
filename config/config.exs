# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :buzz_killfeed,
       ecto_repos: [BuzzKillfeed.Repo]

# Configures the endpoint
config :buzz_killfeed, BuzzKillfeedWeb.Endpoint,
       url: [host: "localhost"],
       render_errors: [view: BuzzKillfeedWeb.ErrorView, accepts: ~w(html json), layout: false],
       pubsub_server: BuzzKillfeed.PubSub,
       live_view: [signing_salt: "bkebIZ7t"]

# Configure esbuild (the version is required)
# most helpful: https://jsonmaur.com/using-phoenix-without-webpack/
# this has to be duplicated here beacuse apparently setting the NODE_PATH environment variable there
#       breaks it here. Or else I haven't figured out how to make it work.
config :esbuild,
       version: "0.12.26",
       default: [
         args: ~w(./assets/js/app.js --bundle --target=es2016 --outfile=priv/static/js/app.js),
         env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
       ]

# Use phoenix slime for rendering slim templates
config :phoenix, :template_engines,
       slim: PhoenixSlime.Engine,
       slime: PhoenixSlime.Engine,
       slimleex: PhoenixSlime.LiveViewEngine # If you want to use LiveView

# Configures Elixir's Logger
config :logger, :console,
       format: "$time $metadata[$level] $message\n",
       metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
