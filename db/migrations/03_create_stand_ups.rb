Sequel.migration do
  up do
    create_table(:stand_ups) do
      primary_key :id
      String :url
      String :questions
      DateTime :send_date
    end
  end

  down do
    drop_table(:stand_ups)
  end
end
