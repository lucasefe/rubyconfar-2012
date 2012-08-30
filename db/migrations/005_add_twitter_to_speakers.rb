Sequel.migration do

  up do
    add_column :speakers, :github, :string
  end

  down do
    remove_column :speakers, :github
  end

end
