require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

$LOAD_PATH.unshift(File.dirname(File.realpath(__FILE__)) + '/../lib')
require 'postfiks'

RSpec.configure { |config| config.order = :random }
