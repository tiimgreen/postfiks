describe Postfix::Stack do
  it 'accepts a Stack (as an Array)' do
    expect(Postfix::Stack.new.size).to eq 0
    expect(Postfix::Stack.new([1, 2]).size).to eq 2
  end

  describe '#push' do
    let(:stack) { Postfix::Stack.new }

    it 'pushes a numeric item to the top of the Stack' do
      expect { stack.push('1') }.to raise_error ArgumentError

      stack.push(1)
      expect(stack.peek).to eq 1

      stack.push(2)
      expect(stack.peek).to eq 2

      stack.push(3)
      expect(stack.peek).to eq 3
    end
  end

  describe '#pop' do
    let(:stack) { Postfix::Stack.new }

    it 'pops the last item from the Stack' do
      stack.push(1)
      stack.push(2)

      expect(stack.pop).to eq 2
      expect(stack.peek).to eq 1
    end
  end

  describe '#peek' do
    let(:stack) { Postfix::Stack.new }

    it 'returns the last item from the Stack' do
      stack.push(1)
      stack.push(2)
      expect(stack.peek).to eq 2
    end
  end

  describe '#size' do
    let(:stack) { Postfix::Stack.new }

    it 'calculates the size of the Stack' do
      stack.push(1)
      stack.push(2)

      expect(stack.size).to eq 2
    end
  end

  describe '#empty?' do
    let(:stack) { Postfix::Stack.new }

    it 'checks whether the Stack is empty' do
      expect(stack.empty?).to eq true

      stack.push(1)

      expect(stack.empty?).to eq false
    end
  end
end
