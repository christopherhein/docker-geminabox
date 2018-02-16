require 'rubygems'
require "rack/builder"
require 'geminabox'

Geminabox.data = '/var/data'
Geminabox.allow_remote_failure = ENV['REMOTE_FAILURE'] == 'true'
Geminabox.public_folder = File.join(File.dirname(__FILE__), 'public')
Geminabox.views = File.join(File.dirname(__FILE__), 'views')

unless ENV['GEMINABOX_CONTEXT'].nil?
  map "#{ENV['GEMINABOX_CONTEXT']}" do
    run Geminabox::Server
  end
end

map "/" do
  run Geminabox::Server
end
