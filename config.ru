$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "rack_redirectorr"

$stdout.sync = true

use RackRedirectorr

run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("Failed to redirect")] }
