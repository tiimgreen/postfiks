module Postfiks
  # A Struct for an operand token
  Operand = Struct.new(:value)

  # A Struct for an operator token
  Operator = Struct.new(:type)

  # An implementation of a reverse Polish notation tokenizer
  class Tokenizer
    # A delimiter that separates operands and operators
    DELIMITER = ' '

    # A list of supported mathematical operators
    OPERATORS = [:+, :-, :*, :/]

    attr_reader :emitted_tokens

    # Initializes an empty Array of emitted tokens
    def initialize
      @emitted_tokens = []
    end

    # Tokenizes a string of characters
    #
    # @param string [String] string of characters to be tokenized
    # @return [Array] an Array of Struct objects containing token data
    def tokenize(string)
      string.split(DELIMITER).each do |token|
        if numeric?(token)
          @emitted_tokens << Operand.new(BigDecimal.new(token))
        elsif operator = operator?(token)
          @emitted_tokens << Operator.new(operator)
        else
          fail InvalidToken, "`#{token}'"
        end
      end

      @emitted_tokens
    end

    private

    def numeric?(token)
      true if Float(token) rescue false
    end

    def operator?(token)
      OPERATORS.include?(token.to_sym) ? token.to_sym : false
    end
  end
end
