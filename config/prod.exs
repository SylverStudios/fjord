use Mix.Config

config :fjord, FjordWeb.Endpoint,
  url: [scheme: "https", host: "damp-tor-73443.herokuapp.com", port: System.get_env("PORT")],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  check_origin: false

# Do not print debug messages in production
# config :logger, level: :info

# Temp config from dev
config :logger, :console, format: "[$level] $message\n"


