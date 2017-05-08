require 'rubygems'
require 'geminabox'

Geminabox.data = '/var/data'
Geminabox.allow_remote_failure = ENV['REMOTE_FAILURE'] == 'true'

run Geminabox::Server
