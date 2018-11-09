class StandAppV2 < StandApp
  get '/users' do
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "This is the Users V2 page!" } }
      format.json { { hello: "world!" }.to_json }
    end
  end

  get '/stand_ups' do
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "This is the Stand_ups V2 page!" } }
      format.json { { hello: "world!" }.to_json }
    end
  end

  get '/teams' do
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "This is the Teams V2 page!" } }
      format.json { { hello: "world!" }.to_json }
    end
  end
end
