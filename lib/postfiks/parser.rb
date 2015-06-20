module Postfiks
  # An implementation of a reverse Polish notation parser
  class Parser
    attr_reader :tokens, :stack

    # Initializes an empty Stack and tokenizes given string
    #
    # @param string [String] string to be tokenized
    def initialize(string)
      @tokens = Tokenizer.new
      @tokens = @tokens.tokenize(string)
      @stack = Stack.new
    end

    # Evalutes the tokenized objects
    #
    # @return [Numeric] numerical result
    # @raise [InsufficientValuesInExpression]
    # @raise [InvalidExpression]
    def evaluate
      @tokens.each do |token|
        if token.is_a? Operand
          @stack << token.value
        elsif token.is_a? Operator
          fail InsufficientValuesInExpression if @stack.size < 2
          @stack << @stack.pop(2).reduce(token.type)
        end
      end

      fail InvalidExpression if @stack.size > 1
      return @stack.peek if @stack.size == 1
    end
  end
end
