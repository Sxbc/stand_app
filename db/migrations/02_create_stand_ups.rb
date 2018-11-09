Sequel.migration do
  up do
    create_table(:stand_ups) do
      primary_key :id
      foreign_key :user_id, :users
      foreign_key :leader_id, :users
      String :url
      String :question_1
      String :question_2
      String :question_3
      DateTime :send_at
    end
  end

  down do
    drop_table(:stand_ups)
  end
end
