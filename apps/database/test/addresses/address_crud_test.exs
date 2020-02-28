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
    #result = ""
    assert result == {:ok, ""}
    #assert true == true
  end

  test "it create address from packed json" do
    #'mytable', '{"id": 1, "name": "John"}'
    #json = Poison.encode!(%{id: 1, name: "John3"}) #|> IO.iodata_to_binary
    #require IEx; IEx.pry()
    str = ~s({
      "1_country":{
          "id": null,
          "countryname": "00qs000France",
        "countrycode": 900
      },
      "2_territory":{
          "id": null,
          "territoryname": "75003",
          "country_id": null
        },
      "3_locality":{
          "id": null,
          "localityname": "Paris",
          "territory_id": null,
          "country_id": null,
          "lcltytype_id": null
      },
      "4_street":{
          "id": null,
          "streetname": "Rue du Grenier Saint-Lazare",
          "locality_id": null,
          "streettype_id": null
      },
      "5_houseaddr":{
        "id": null,
        "houseno": 22,
        "street_id": null
      }
      })

    pstr = Poison.Parser.parse!(str, %{})
    json = Poison.encode!(pstr)

    #IO.inspect("str: #{str}")


    out = Crud.create(json)
    #dtr = Poison.Parser.parse!(result, %{})


    #IO.inspect(out)

    #|> IO.inspect()sult)


    result = ""

    assert result == {:ok, ""}
    #assert true == true
  end


end
