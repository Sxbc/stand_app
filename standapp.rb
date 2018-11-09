require 'rubygems'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/respond_with'
require 'builder'
require 'sequel'
require 'sqlite3'

DB = Sequel.connect('sqlite://standapp.db')

# Models
class User < Sequel::Model
  plugin :validation_helpers
  def validate
    super
    validates_presence [:name, :email, :password]
  end
end
class StandUp < Sequel::Model; end
class Team    < Sequel::Model; end

# StandApp
class StandApp < Sinatra::Base
  register Sinatra::RespondWith

  get '/' do
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "Hello world!"} }
      format.json { { hello: "world!" }.to_json }
    end
  end
end
