$:.unshift(File.dirname(__FILE__))
require 'logger'
require "rubygems"
require "rack_redirectorr"

$stdout.sync = true
logger = ::Logger.new(STDOUT)

use RackRedirectorr, logger

run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("Failed to redirect")] }
