use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :yetcargo_back, YetcargoBackWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :yetcargo_back, YetcargoBack.Repo,
  username: "postgres",
  password: "postgres",
  database: "yetcargo_back_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
