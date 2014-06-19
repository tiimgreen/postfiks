require 'ostruct'

require 'postfix/error'
require 'postfix/stack'
require 'postfix/tokenizer'
require 'postfix/parser'

# An implementation of the reverse Polish notation
module Postfix
  class << self
    def evaluate(expression)
      Parser.new(expression).evaluate
    end
    alias_method :eval, :evaluate
  end
end
