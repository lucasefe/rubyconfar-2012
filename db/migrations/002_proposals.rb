Sequel.migration do

  up do
    create_table(:proposals) do
      primary_key :id
      String :title
      String :abstract
      String :author_name
      String :author_email
      String :author_twitter
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table(:users)
  end

end
