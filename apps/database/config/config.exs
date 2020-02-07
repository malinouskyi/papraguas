use Mix.Config

config :database, Addresses.Repo,
  database: "ts_development",
  username: "postgres",
  #password: "pass",
  hostname: "localhost"

config :database, :ecto_repos, [Addresses.Repo]
