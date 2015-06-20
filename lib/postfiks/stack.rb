module Postfiks
  # An implementation of a Stack collection
  # @see https://en.wikipedia.org/wiki/Stack_(abstract_data_type)
  class Stack
    def initialize
      @stack = []
    end

    # Adds an element to the collection
    #
    # @param element
    # @return [Array] new collection
    def <<(element)
      @stack.push(element)
    end

    # Removes the last n elements that were added to the collection
    #
    # @param n [optional, Integer]
    # @return removed element(s)
    def pop(n = 1)
      @stack.pop(n)
    end

    # Returns the first item in the collection
    #
    # @return first item in collection
    def peek
      @stack.last
    end

    # Returns the number of elements in the collection
    #
    # @return [Integer] number of elements in collection
    def size
      @stack.size
    end

    # Checks if the collection is empty
    #
    # @return [Boolean]
    def empty?
      @stack.empty?
    end

    # Clears the collection
    #
    # @return [Array] emptied collection
    def clear!
      @stack.clear
    end
  end
end
