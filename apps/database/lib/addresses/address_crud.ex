defmodule Addresses.AddressCrud do
  defstruct jsoninsert: ""

  def create(relname, reljson) do
    Ecto.Adapters.SQL.query!(Database.Repo, "SELECT jsoninsert($1, $2)", [relname, reljson])
    |> IO.inspect()
    |> result_to_struct
  end

  defp result_to_struct(res) do
    cols = Enum.map res.columns, &(String.to_atom(&1))
    Enum.map res.rows, fn(row) -> struct(__MODULE__, Enum.zip(cols, row)) end
  end
end
