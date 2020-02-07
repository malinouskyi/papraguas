defmodule Datasets.Fetchers do
  alias Datasets.Fetchers.TsPg

  def pg_data do
    TsPg.fetch_pg_dataset()
  end

end
