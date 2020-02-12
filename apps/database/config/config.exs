use Mix.Config

config :database, Database.Repo,
  database: "ts_development",
  username: "postgres",
  #password: "pass",
  hostname: "localhost"

config :database, :ecto_repos, [Database.Repo]
