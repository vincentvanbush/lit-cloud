# frozen_string_literal: true

require 'minitest/autorun'
require 'pry-byebug'
require 'vcr'
require 'minitest-vcr'
require 'webmock'

Dir['./lib/lit/**/*.rb'].each { |file| require file }

VCR.configure do |config|
  config.cassette_library_dir = 'test/cassettes'
  config.hook_into :webmock
end

MinitestVcr::Spec.configure!
