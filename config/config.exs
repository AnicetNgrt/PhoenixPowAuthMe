# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth_me_pow,
  ecto_repos: [AuthMePow.Repo]

config :auth_me_pow, :pow,
  user: AuthMePow.Users.User,
  repo: AuthMePow.Repo

# Configures the endpoint
config :auth_me_pow, AuthMePowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dF8o/+mluRgap4BqpkncyNk9S+o/NsIIDHx6XvyyHigmJxRE73iNsD5f2tHP4uSP",
  render_errors: [view: AuthMePowWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuthMePow.PubSub,
  live_view: [signing_salt: "Re67mhDZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
