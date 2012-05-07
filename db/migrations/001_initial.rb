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

    create_table(:subscribers) do
      primary_key :id
      String :email
      DateTime :created_at
      DateTime :updated_at
    end
  end
  
  down do
    drop_table(:users)
  end

end