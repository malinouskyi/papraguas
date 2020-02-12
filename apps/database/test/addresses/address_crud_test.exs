defmodule AddressCrudTest do
  use ExUnit.Case, async: true
  alias Addresses.AddressCrud, as: Crud

  #test "the truth" do
  #  assert 1 + 1 == 2
  #end

  test "it create address from json" do
    #'mytable', '{"id": 1, "name": "John"}'
    json = Poison.encode!(%{id: 1, name: "John3"}) #|> IO.iodata_to_binary
    result = Crud.create("mytable", json)
    assert result == {:ok, ""}
    #assert true == true
  end

end
