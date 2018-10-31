Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String :name
      String :email
      String :password
      String :role
    end
  end

  down do
    drop_table(:admins)
  end
end
