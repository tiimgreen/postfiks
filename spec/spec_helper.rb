require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift(File.dirname(File.realpath(__FILE__)) + '/../lib')
require 'postfix'

RSpec.configure { |config| config.order = :random }
