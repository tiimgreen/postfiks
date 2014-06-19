module Postfix
  # Raised when invalid token during tokenization is encountered
  class InvalidToken < StandardError; end

  # Raised when operator doesn't have enough operands to work with
  class InsufficientValuesInExpression < StandardError; end

  # Raised when expression has 2+ operands but no operators
  class InvalidExpression < StandardError; end
end
