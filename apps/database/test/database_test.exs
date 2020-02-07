defmodule DatabaseTest do
  use ExUnit.Case
  doctest Database

  test "greets the world" do
    assert Database.hello() == :world
  end

  test "greets the create dataset" do
    assert Database.create_dataset() == %{pg: :dataset}
  end

end
