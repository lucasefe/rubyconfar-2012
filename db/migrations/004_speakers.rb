Sequel.migration do

  up do
    create_table(:speakers) do
      primary_key :id
      String :first_name
      String :last_name
      String :twitter
      String :bio_es
      String :bio_en
      String :company
      String :country
      DateTime :created_at
      DateTime :updated_at
    end

  end

  down do
    drop_table :speakers
  end

end
