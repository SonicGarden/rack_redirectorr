class RackRedirectorr
  def initialize(app, logger, options = {})
    @app = app
    @logger = logger
  end

  def call(env)
    @logger.info 'RackRedirectorr called'
    headers = {
        'Content-Type' => 'text/html',
        'Location'     => ENV["REDIRECT_URL"]
    }
    [301, headers, []]
  end
end
