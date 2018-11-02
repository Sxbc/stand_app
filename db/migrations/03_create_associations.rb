Sequel.migration do
  up do
    create_table(:stand_ups_and_users) do
      foreign_key :stand_up_id, :stand_ups
      foreign_key :user_id, :users
    end
  end

  down do
    drop_table(:stand_ups_and_users)
  end
end
