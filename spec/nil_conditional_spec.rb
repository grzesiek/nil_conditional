describe NilConditional do
  context 'nil value' do
    it 'should be considered as nil' do
      expect(NilConditional.new.nil?).to be(true)
      expect(NilConditional.new).to eq(nil)
      expect(NilConditional.new).to eql(nil)
    end
  end

  context 'missing method behavior' do
    it 'return new NilConditional object when method is missing' do
      expect(NilConditional.new.non_existent_method).to be_a(NilConditional)
    end
  end
end
