require 'rubygems'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/respond_with'
require 'builder'
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
  register Sinatra::RespondWith

  before (/.*/) do
    if request.url.match(/.xml$/)
      request.accept.unshift('application/xml')
      request.path_info = request/path_info.gsub(/.xml%/,'')
    end

    if request.url.match(/.json$/)
      request.accept.unshift('application/json')
      request.path_info = request/path_info.gsub(/.json%/,'')
    end
  end

  get '/' do
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "Hello world!"} }
      format.json { { hello: "world!" }.to_json }
    end
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
