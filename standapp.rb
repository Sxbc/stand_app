require 'rubygems'
require 'sinatra/base'
require 'sequel'
require 'sqlite3'

DB = Sequel.connect('sqlite://standapp.db')

# Classes
class User    < Sequel::Model; end
class StandUp < Sequel::Model; end
class Team    < Sequel::Model; end

class StandApp < Sinatra::Base

  get '/' do
    "Welcome to the StandApp!"
  end
end

