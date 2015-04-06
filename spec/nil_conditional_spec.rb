describe NilConditional do
  context 'nil value' do
    it 'should be considered as nil' do
      expect(NilConditional.new(Object.new).nil?).to be(true)
      expect(NilConditional.new(Object.new)).to eq(nil)
      expect(NilConditional.new(Object.new)).to eql(nil)
    end
  end

  context 'missing method behavior' do
    it 'return new NilConditional object when method is missing' do
      conditional = NilConditional.new(Object.new)
      expect(conditional.non_existent_method).to be_a(NilConditional)
    end
  end
end
