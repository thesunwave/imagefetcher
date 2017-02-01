$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require 'webmock/rspec'
require 'vcr'
require 'imagefetcher'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = false
  c.ignore_localhost = true
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
