require 'rubygems'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/respond_with'
require 'builder'

class StandApp < Sinatra::Base
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
end
