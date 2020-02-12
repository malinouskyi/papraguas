defmodule Datasets.Fetchers.TsPg do
  alias Addresses.AddressSearch

  def fetch_pg_dataset do
    articles = AddressSearch.search(3, "term")
    IO.inspect("articles: #{articles}")
    %{pg: :dataset}
  end

end
