class RackRedirectorr
  def initialize(app, logger, options = {})
    @app = app
    @logger = logger
  end

  def call(env)
    $stdout.puts 'RackRedirectorr called'
    headers = {
        'Content-Type' => 'text/html',
        'Location'     => ENV["REDIRECT_URL"]
    }
    [301, headers, []]
  end
end
