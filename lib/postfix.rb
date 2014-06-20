require 'ostruct'

require 'postfix/error'
require 'postfix/stack'
require 'postfix/tokenizer'
require 'postfix/parser'

# An implementation of the reverse Polish notation
module Postfix
  class << self
    def setup
      return false if String.respond_to?(:postfix)
      String.send(:define_method, :postfix) { Parser.new(self).evaluate }
    end
  end
end

Postfix.setup
