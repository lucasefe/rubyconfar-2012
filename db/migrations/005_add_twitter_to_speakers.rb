Sequel.migration do

  up do
    add_column :speakers, :github, String
  end

  down do
    remove_column :speakers, :github
  end

end
