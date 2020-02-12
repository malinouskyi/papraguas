defmodule Addresses.Repo.Migrations.CreateStreet do
  use Ecto.Migration

  def change do
    create table(:street, primary_key: false) do
      add :id, :uuid, default: fragment("uuid_generate_v4()"), primary_key: true
      add :streetname, :string
      add :locality_id, :uuid
      add :streettype_id, :uuid
      timestamps([type: :utc_datetime_usec])
    end
  end
end
