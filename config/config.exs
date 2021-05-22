# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :temple_example, TempleExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SbQ9qv+t2C5CgORY6ne0grsSdFqCCY22SbNFTfgo46JrpRmoi4Jaqm5xtROm310B",
  render_errors: [view: TempleExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TempleExample.PubSub,
  live_view: [signing_salt: "aqhwnboW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :temple,
  aliases: [
    label: :_label,
    link: :_link,
    select: :_select
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
