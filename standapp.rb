require 'rubygems'
require 'sinatra/base'
require 'sequel'
require 'sqlite3'

DB = Sequel.connect('sqlite://standapp.db')

class StandApp < Sinatra::Base
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
