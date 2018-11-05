class StandAppV1 < Sinatra::Base
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
