class User < Sequel::Model
  many_to_many :stand_ups
end
