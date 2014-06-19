describe Postfix::Tokenizer do
  it 'creates an empty Array upon initialization' do
    expect(Postfix::Tokenizer.new.emitted_tokens.class).to eq Array
    expect(Postfix::Tokenizer.new.emitted_tokens.empty?).to eq true
  end

  describe '#tokenize' do
    let(:tokenizer) { Postfix::Tokenizer.new }

    it 'tokenizes a string of characters' do
      tokenizer.tokenize('1 2 +')
      expect(tokenizer.emitted_tokens.first.value).to eq 1.0
      expect(tokenizer.emitted_tokens.last.type).to eq :operator
    end

    it 'fails if invalid token is encountered' do
      expect { tokenizer.tokenize('$') }.to raise_error Postfix::InvalidToken
    end
  end
end
