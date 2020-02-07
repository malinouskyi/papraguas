defmodule Database do
  @moduledoc """
  Documentation for Database.
  """
  alias Datasets.Fetchers


  @doc """
  Hello world.

  ## Examples

      iex> Database.hello()
      :world

  """
  def hello do
    :world
  end

  def create_dataset do
    Fetchers.pg_data()
  end
end
