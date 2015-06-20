describe Postfiks do
  describe '.setup' do
    it 'adds #postfix (and alias for #postfiks) to the String class' do
      expect('2 2 +'.postfix).to eq 4
      expect('2 2 +'.postfiks).to eq 4
    end
  end
end
