begin
  require 'pry-byebug'
rescue LoadError
  $stderr.puts('pry-byebug not installed.')
end

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)

Dir['./spec/integration/support/**/*.rb'].sort.each { |f| require(f) }

RSpec.configure do |config|
  config.filter_run_excluding broken: true
end

require 'buck'
