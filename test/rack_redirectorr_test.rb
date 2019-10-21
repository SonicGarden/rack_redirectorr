require 'minitest/autorun'
require 'rack/test'

OUTER_APP = Rack::Builder.parse_file('config.ru').first

class RackRedirectorrTest < Minitest::Test
  include Rack::Test::Methods

  def app
    OUTER_APP
  end

  def setup
    ENV['REDIRECT_URL'] = 'http://www.example.com'
  end

  def test_index
    get '/'
    assert_equal 301, last_response.status
    header = last_response.header
    assert_equal 'text/html', header['Content-Type']
    assert_equal 'http://www.example.com', header['Location']
  end
end
