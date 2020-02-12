defmodule Addresses.Repo.Migrations.CreateHouseaddr do
  use Ecto.Migration

  def change do
    create table(:houseaddr, primary_key: false) do
      add :id, :uuid, default: fragment("uuid_generate_v4()"), primary_key: true
      add :houseno, :integer
      add :bodyno,  :integer
      add :buildingno,  :integer
      add :street_id, :uuid
      timestamps([type: :utc_datetime_usec])
    end
  end
end
