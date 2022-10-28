# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require 'secret' if File.exist? File.join(__dir__, 'secret.rb')

require 'steam-api'

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end
