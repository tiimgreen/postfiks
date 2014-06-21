require 'bigdecimal'

require 'postfiks/error'
require 'postfiks/stack'
require 'postfiks/tokenizer'
require 'postfiks/parser'

# An implementation of the reverse Polish notation
module Postfiks
  class << self
    # Sets up helper instance method for String class
    #
    # @return [false, Symbol] false if method already defined,
    #                         otherwise method Symbol
    def setup
      return false if String.respond_to?(:postfix)
      String.send(:define_method, :postfix) { Parser.new(self).evaluate }
    end
  end
end

Postfiks.setup
