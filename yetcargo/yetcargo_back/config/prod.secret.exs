use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :yetcargo_back, YetcargoBackWeb.Endpoint,
  secret_key_base: "V0eivdOYhPbwIm0/jMFx6YuZGSLuNHWUDuXtQhJye6ZP7rXJk8Uhc6EP1uc2psvt"

# Configure your database
config :yetcargo_back, YetcargoBack.Repo,
  username: "postgres",
  password: "postgres",
  database: "yetcargo_back_prod",
  pool_size: 15
