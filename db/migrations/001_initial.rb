Sequel.migration do

  up do
    create_table(:users) do
      primary_key :id
      String :uid
      String :name
      String :nickname
      String :image
      String :location
    end
  end
  
  down do
    drop_table(:users)
  end

end