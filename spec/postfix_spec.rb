describe Postfix do
  describe '#evaluate' do
    it 'evaluates the expression' do
      expect(Postfix.evaluate('2 2 +')).to eq 4
    end

    describe '#eval' do
      it 'is an alias for #evaluate' do
        expect(Postfix.eval('2 2 +')).to eq 4
      end
    end
  end
end
