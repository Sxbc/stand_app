require File.expand_path '../test_helper.rb', __FILE__

class StandAppTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    StandApp
  end

  def test_hello_world
    get '/'
    assert last_response.ok?
    assert_equal "Hello to the StandApp!", last_response.body
  end
end
