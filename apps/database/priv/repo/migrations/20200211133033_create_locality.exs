defmodule Addresses.Repo.Migrations.CreateLocality do
  use Ecto.Migration

  def change do
    create table(:locality, primary_key: false) do
      add :id, :uuid, default: fragment("uuid_generate_v4()"), primary_key: true
      add :localityname, :string
      add :territory_id, :uuid, null: false
      add :country_id, :uuid, null: false
      add :mainlocality_id, :uuid, default: nil
      timestamps([type: :utc_datetime_usec])
    end
  end
end
