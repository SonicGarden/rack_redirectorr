class RackRedirectorr
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts 'RackRedirectorr called'
    headers = {
        'Content-Type' => 'text/html',
        'Location'     => ENV["REDIRECT_URL"]
    }
    [301, headers, []]
  end
end
