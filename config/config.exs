# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_yahoo_chart,
  ecto_repos: [ElixirYahooChart.Repo]

# Configures the endpoint
config :elixir_yahoo_chart, ElixirYahooChart.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Yu30yhejtiGvGBtlLMEWPa9AJtdKptvLLj+zYTWj4xlJ/evUW0yy/OAE/Z8NpaPX",
  render_errors: [view: ElixirYahooChart.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirYahooChart.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
