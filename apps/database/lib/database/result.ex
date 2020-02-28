defmodule Result do
  use Ecto.Schema

  schema "result" do
    field :res, :string
    field :descript, :string
  end
end
