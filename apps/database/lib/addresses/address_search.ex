defmodule Addresses.AddressSearch do
  defstruct id: 0, houseno: 0, streetname: "", fullname: ""
  #defstruct id: 0, title: "", slug: "", display_date: Ecto.Date, tags: [], rank: 0.0, introduction: ""

  @spec search(any, any) :: [any]
  def search(houseno, term) do
    Ecto.Adapters.SQL.query!(Database.Repo, "SELECT * FROM address_search($1, $2)", [houseno, term])
    |> IO.inspect()
    |> result_to_struct
  end

  defp result_to_struct(res) do
    cols = Enum.map res.columns, &(String.to_atom(&1))
    Enum.map res.rows, fn(row) -> struct(__MODULE__, Enum.zip(cols, row)) end
  end
end
