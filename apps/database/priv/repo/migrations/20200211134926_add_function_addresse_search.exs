defmodule Addresses.Repo.Migrations.AddFunctionAddresseSearch do
  use Ecto.Migration

  def change do
    execute """
    CREATE OR REPLACE FUNCTION address_search(houseno integer, term varchar)
    RETURNS table(id uuid, houseno integer, streetname varchar, fullname text)
    AS $$
      select h.id, h.houseno, str.streetname,
          CONCAT(str.streetname,', ', h.houseno) as fullname
      from
        (
          select s.id, s.streetname
            from street s
              where
                s.streetname like '%term%'
        ) as str
      INNER JOIN houseaddr h on (str.id = h.street_id) and (h.houseno = houseno)
    $$ language SQL;
    """
  end
end
