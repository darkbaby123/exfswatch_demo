# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :exfswatch_demo, ExfswatchDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+uzwh1+tzIyo0w20WvNYhasaHO/RwQincctivMaXkC4sBNqS581EYWRLTDRzq9bV",
  render_errors: [view: ExfswatchDemo.ErrorView, accepts: ~w(json)],
  pubsub: [name: ExfswatchDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
