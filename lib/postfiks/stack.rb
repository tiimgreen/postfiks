module Postfiks
  # An implementation of a simplistic Stack
  class Stack
    # Initializes a Stack
    #
    # @param stack [optional, Array] a Stack (as an Array)
    def initialize(stack = [])
      @stack = stack
    end

    # Pushes an item onto the Stack
    #
    # @param item item to be pushed onto the Stack
    # @return [Array] the Stack (as an Array)
    def push(item)
      @stack.push(item)
    end
    alias_method :<<, :push

    # Removes the first item on the Stack
    #
    # @param n [optional, Integer] the number of items to pop
    # @return the removed item from the Stack
    def pop(n = 1)
      @stack.pop(n)
    end
    alias_method :-@, :pop

    # Returns the first item on the Stack
    #
    # @return the first item on the Stack
    def peek
      @stack.last
    end
    alias_method :~, :peek

    # Returns the size of the Stack
    #
    # @return [Integer] the size of the Stack
    def size
      @stack.size
    end
    alias_method :+@, :size

    # Returns the Boolean value of whether or not the Stack has no items
    #
    # @return [Boolean]
    def empty?
      @stack.empty?
    end

    # Clears the Stack
    #
    # @return [Array] empty Stack (as an Array)
    def clear!
      @stack.clear
    end
  end
end
