Sequel.migration do
  up do
    create_table(:answers) do
      primary_key :id
      foreign_key :stand_up_id, :stand_ups
      foreign_key :user_id, :users
      String :answer_1
      String :answer_2
      String :answer_3
      DateTime :submitted_at
    end
  end
end
