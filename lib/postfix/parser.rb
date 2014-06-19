module Postfix
  # An implementation of a reverse Polish notation parser
  class Parser
    attr_reader :tokens, :stack

    # Initializes an empty Stack and tokenizes input
    #
    # @param string [String] string to be tokenized
    def initialize(string)
      @tokens = Tokenizer.new
      @tokens = @tokens.tokenize(string)
      @stack = Stack.new
    end

    # Evalutes the tokenized objects
    #
    # @return [Numeric] the numerical result
    # @raise [InsufficientValuesInExpression]
    # @raise [InvalidExpression]
    def evaluate
      @tokens.each do |token|
        if token.type == :operand
          @stack << token.value
        elsif token.type == :operator
          fail InsufficientValuesInExpression if +@stack < 2
          @stack << @stack.pop(2).reduce(token.value)
        end
      end

      fail InvalidExpression if +@stack > 1
      return ~@stack if +@stack == 1
    end
  end
end
