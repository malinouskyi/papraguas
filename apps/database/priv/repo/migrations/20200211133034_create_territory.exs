defmodule Addresses.Repo.Migrations.CreateTerritory do
  use Ecto.Migration

  def change do
    create table(:territory, primary_key: false) do
      add :id, :uuid, default: fragment("uuid_generate_v4()"), primary_key: true
      add :territoryname, :string
      add :country_id, :uuid, null: false
      add :mainterritory_id, :uuid, default: nil
      timestamps([type: :utc_datetime_usec])
    end
  end
end
