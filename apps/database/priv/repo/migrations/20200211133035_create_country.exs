defmodule Addresses.Repo.Migrations.CreateCountry do
  use Ecto.Migration

  def change do
    create table(:country, primary_key: false) do
      add :id, :uuid, default: fragment("uuid_generate_v4()"), primary_key: true
      add :countryname, :string
      add :countrycode, :integer, null: false
      timestamps([type: :utc_datetime_usec])
    end
  end
end
