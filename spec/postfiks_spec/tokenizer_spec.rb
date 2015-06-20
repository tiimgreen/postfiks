describe Postfiks::Tokenizer do
  it 'creates an empty Array upon initialization' do
    expect(described_class.new.emitted_tokens).to be_kind_of Array
    expect(described_class.new.emitted_tokens).to be_empty
  end

  describe '#tokenize' do
    let(:tokenizer) { described_class.new }

    it 'tokenizes a string of characters' do
      tokenizer.tokenize('1 2 +')
      expect(tokenizer.emitted_tokens.first.value).to eq 1.0
      expect(tokenizer.emitted_tokens.last.type).to eq :+
    end

    it 'fails if invalid token is encountered' do
      expect { tokenizer.tokenize('$') }.to raise_error Postfiks::InvalidToken
    end
  end
end
