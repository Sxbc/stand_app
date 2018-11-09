class StandAppV1 < StandApp
  helpers do
    def json_params
      begin
        JSON.parse(request.body.read)
      rescue
        halt 400, { message: 'Invalid JSON' }.to_json
      end
    end
  end

  #before do
  #  content_type 'application/xml'
  #end

  post '/registrations' do
    user = User.new(json_params)
    if user.save
      status 201
    else
      status 400
    end
    respond_with :index do |format|
      format.xml { builder { |xml| xml.em "User registered!" } }
      format.json { { user: "registered!" }.to_json }
    end
  end
end

