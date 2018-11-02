require File.expand_path '../test_helper.rb', __FILE__

class StandAppTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    StandApp
  end

  def test_welcome_message
    get '/'
    assert last_response.ok?
    assert_equal "Welcome to the StandApp Public Endpoint!", last_response.body
  end

  def test_users_page
    get '/users'
    assert last_response.ok?
    assert_equal "This is the Users page", last_response.body
  end

  def test_stand_ups_page
    get '/stand_ups'
    assert last_response.ok?
    assert_equal "This is the Stand_ups page", last_response.body
  end

  def test_teams_page
    get '/teams'
    assert last_response.ok?
    assert_equal "This is the Teams page", last_response.body
  end
end
