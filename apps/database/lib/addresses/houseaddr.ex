defmodule Addresses.Houseaddr do
  use Ecto.Schema

  schema "houseaddr" do
    field :houseno, :integer
    field :bodyno,  :integer
    field :buildingno,  :integer
    field :street_id, :integer

    timestamps([type: :utc_datetime_usec])
  end
end
