require 'rubygems'
require 'sinatra/base'

class StandApp < Sinatra::Base
  get '/' do
    "Hello to the StandApp!"
  end
end
