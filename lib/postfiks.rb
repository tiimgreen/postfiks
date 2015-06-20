require 'bigdecimal'
require 'bigdecimal/util'

require 'postfiks/error'
require 'postfiks/stack'
require 'postfiks/tokenizer'
require 'postfiks/parser'

# An implementation of the reverse Polish notation
# @see https://en.wikipedia.org/wiki/Reverse_Polish_notation
module Postfiks
  # Sets up helper instance method for String class
  #
  # @return [false, Symbol] false if method already defined,
  #                         otherwise method Symbol
  def self.setup
    return false if String.respond_to?(:postfix)
    String.send(:define_method, :postfix) { Parser.new(self).evaluate }
    String.send(:alias_method, :postfiks, :postfix)
  end
end

Postfiks.setup
