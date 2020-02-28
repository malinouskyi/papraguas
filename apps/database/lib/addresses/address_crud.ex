defmodule Addresses.AddressCrud do
  #defstruct jsoninsert: ""
  defstruct result: ""
  alias Database.Repo
  alias Result

  def create(reljson) do
    response = Ecto.Adapters.SQL.query!(Database.Repo, "SELECT packedjsoninsert($1) as result", [reljson])
    Enum.map(response.rows, fn row ->
        fields = Enum.zip(response.columns, row) |> Enum.into(%{})
        IO.inspect(elem(fields["result"], 0))
        IO.inspect(elem(fields["result"], 1))

    #    Ecto.Schema.__loaded__(Result,fields)
    #      #__load__(Result, nil, nil, nil, fields, &Ecto.Type.adapter_load(__adapter__(), &1, &2))
      end
    )
    #|> result_to_struct
  end

  def create(relname, reljson) do
    IO.inspect("Ops")
    #Ecto.Adapters.SQL.query!(Database.Repo, "SELECT jsoninsert($1, $2)", [relname, reljson])
    #|> IO.inspect()
    #|> result_to_struct
  end

  defp result_to_struct(res) do
    cols = Enum.map res.columns, &(String.to_atom(&1))
    Enum.map res.rows, fn(row) -> struct(__MODULE__, Enum.zip(cols, row)) end
  end

  defp result_to_string(res) do
    cols = Enum.map res.columns, &(String.to_atom(&1))
    Enum.map res.rows, fn(row) -> struct(__MODULE__, Enum.zip(cols, row)) end
  end


end
