defmodule Addresses.Repo.Migrations.CreateHouseaddr do
  use Ecto.Migration

  def change do
    create table(:houseaddr) do
      add :houseno, :integer
      add :bodyno,  :integer
      add :buildingno,  :integer
      add :street_id, :integer
      timestamps([type: :utc_datetime_usec])
    end
  end
end
