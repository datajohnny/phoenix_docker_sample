# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :planning_poker,
  ecto_repos: [PlanningPoker.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :planning_poker, PlanningPokerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8p/+woT47nEqMVo7zolNrVQPjH6bxobn26w767CHsdtXnv62lnyGdkz6p3GvO6AA",
  render_errors: [view: PlanningPokerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PlanningPoker.PubSub,
  live_view: [signing_salt: "h8Voa20i"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
