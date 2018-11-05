class StandAppV2 < Sinatra::Base
  get '/users' do
    "This is the version 2.0 Users page!"
  end

  get '/stand_ups' do
    "This is the version 2.0 Stand_ups page!"
  end

  get '/teams' do
    "This is the version 2.0 Teams page"
  end
end
