require 'rubygems'
require 'sinatra/base'
require 'sequel'
require 'sqlite3'
require 'rack/protection'

DB = Sequel.connect('sqlite://standapp.db')

# Classes
class User    < Sequel::Model; end
class StandUp < Sequel::Model; end
class Team    < Sequel::Model; end

class StandApp < Sinatra::Base
  enable :sessions
  use Rack::Protection::AuthenticityToken

  get '/' do
    "Welcome to the StandApp!"
  end

  get '/users' do
    "This is the Users page"
  end

  get '/stand_ups' do
    "This is the Stand_ups page"
  end

  get '/teams' do
    "This is the Teams page"
  end
end
