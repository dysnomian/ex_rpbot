use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :ex_rpbot, ExRpbot.Endpoint,
  secret_key_base: "vKjMMdL4ZVBBOEsYmMKaWsshJ1qLIe5op3sZZUf7t1+/bByJTA1sZ9mflMnDTFWh"

# Configure your database
config :ex_rpbot, ExRpbot.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_USERNAME"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: "ex_rpbot_prod",
  pool_size: 20
