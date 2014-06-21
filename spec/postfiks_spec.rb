describe Postfiks do
  describe '#setup' do
    it 'adds #postfix to the String class' do
      expect('2 2 +'.postfix).to eq 4
    end
  end
end
