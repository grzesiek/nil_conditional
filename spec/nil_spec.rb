describe 'nil object' do
  context 'local variable' do
    it 'should return nil conditional if var is nil' do
      var = nil
      expect(__var{}).to be_a(NilConditional)
    end
  end

  context 'test method' do
    before do
      allow(::Object).to receive(:nil_test) { nil }
    end

    it 'should return NilConditional instance when method return nil' do
      expect(Object.nil_test).to be nil
      expect(Object.new.__nil_test?).to be_a(NilConditional)
    end

    it 'should return NilConditional instance when method return nil and uses block' do
      expect(Object.new.__nil_test?{}).to be_a(NilConditional)
    end
  end
end
