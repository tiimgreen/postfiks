module Postfix
  # An implementation of a numeric-only Stack
  class Stack
    # Initializes a Stack
    #
    # @param stack [optional, Array] a Stack (as an Array)
    def initialize(stack = [])
      @stack = stack
    end

    # Pushes an item onto the Stack
    #
    # @param item [Numeric] item to be pushed onto the Stack
    # @return [Array] the Stack as an Array (so it is reversed)
    # @raise [ArgumentError] raises error if item is not numeric
    def push(item)
      fail ArgumentError, 'Item not numeric' unless item.is_a? Numeric
      @stack.push(item)
    end

    # Removes the first item on the Stack
    #
    # @return [Numeric] the removed item from the Stack
    def pop
      @stack.pop
    end

    # Returns the first item on the Stack
    #
    # @return [Numeric] the first item on the Stack
    def peek
      @stack.last
    end

    # Returns the size of the Stack
    #
    # @return [Integer] the size of the Stack
    def size
      @stack.size
    end

    # Returns the Boolean value of whether or not the Stack has no items
    #
    # @return [Boolean]
    def empty?
      @stack.empty?
    end
  end
end
