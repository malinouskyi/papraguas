defmodule Datasets.FetchersSpec do
  use ESpec

  describe ".pg_data" do
    let :data, do: described_module().pg_data
    it do: expect data() |> to(eq %{pg: :dataset})
  end

end
