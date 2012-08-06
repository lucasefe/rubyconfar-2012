Sequel.migration do

  up do
    drop_table(:users)
    create_table(:users) do
      primary_key :id
      String :email
      String :crypted_password
    end

  end

  down do
  end

end
