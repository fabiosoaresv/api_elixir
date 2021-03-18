# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_elixir,
  ecto_repos: [ApiElixir.Repo]

# Configures the endpoint
config :api_elixir, ApiElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9ztYA56HRJ+J+h8aCdj4ijPrHaYqL9u3OqQUbNpBn9rbBafT3KzyAmAZHRQUK4/b",
  render_errors: [view: ApiElixirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ApiElixir.PubSub,
  live_view: [signing_salt: "W5AFFmDM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
