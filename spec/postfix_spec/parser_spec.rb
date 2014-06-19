describe Postfix::Parser do
  it 'tokenizes the argument upon initialization' do
    expect(Postfix::Parser.new('2 2 +').tokens.size).to eq 3
    expect(Postfix::Parser.new('2 2 +').stack.empty?).to eq true
  end

  describe '#evaluate' do
    it 'evaluates the tokenized values (simple expression)' do
      expect(Postfix::Parser.new('2 2 +').evaluate).to eq 4
      expect(Postfix::Parser.new('2 2.5 +').evaluate).to eq 4.5
    end

    it 'evaluates the tokenized values (complex expression)' do
      expect(Postfix::Parser.new('5 1 2 + 4 * + 3 -').evaluate).to eq 14
      expect(Postfix::Parser.new('6 4 5 + * 25 2 3 + / -').evaluate).to eq 49
    end

    it 'fails if the operator does not have enough operands to work with' do
      expect { Postfix::Parser.new('2 +').evaluate }.to \
        raise_error Postfix::InsufficientValuesInExpression
    end

    it 'fails when expression has 2+ operands but no operators' do
      expect { Postfix::Parser.new('2 2 2 +').evaluate }.to \
        raise_error Postfix::InvalidExpression
    end
  end
end
