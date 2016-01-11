Sequel.migration do
  up do
    create_table :applicant_products do
      primary_key :id
      String :name
      Text :description
      Float :price
    end
  end

  down do
    drop_table :applicant_products
  end
end
