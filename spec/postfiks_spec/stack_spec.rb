describe Postfiks::Stack do
  describe '#<<' do
    let(:stack) { described_class.new }

    it 'pushes an item to the top of the collection' do
      stack << 1
      expect(stack.peek).to eq 1
      stack << 2
      expect(stack.peek).to eq 2
      stack << 3
      expect(stack.peek).to eq 3
    end
  end

  describe '#pop' do
    let(:stack) { described_class.new }

    it 'pops the last item from the collection' do
      stack << 1
      stack << 2
      expect(stack.pop).to eq [2]
      expect(stack.peek).to eq 1
    end
  end

  describe '#peek' do
    let(:stack) { described_class.new }

    it 'returns the last item from the collection' do
      stack << 1
      stack << 2
      expect(stack.peek).to eq 2
    end
  end

  describe '#size' do
    let(:stack) { described_class.new }

    it 'calculates the size of the collection' do
      stack << 1
      stack << 2
      expect(stack.size).to eq 2
    end
  end

  describe '#empty?' do
    let(:stack) { described_class.new }

    it 'checks whether the collection is empty' do
      expect(stack).to be_empty
      stack << 1
      expect(stack).to_not be_empty
    end
  end

  describe '#clear!' do
    let(:stack) { described_class.new }

    it 'clears the collection' do
      stack << 1
      stack << 2
      stack.clear!
      expect(stack).to be_empty
    end
  end
end
