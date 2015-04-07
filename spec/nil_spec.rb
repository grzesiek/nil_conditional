describe 'nil object' do
  context 'local variable' do
    it 'should return nil conditional if var is nil' do
      expect(nil._?).to be_a(NilConditional)
    end
  end

  context 'test method' do
    before do
      allow(::Object).to receive(:nil_test) { nil }
    end

    it 'should return NilConditional instance when method return nil' do
      expect(Object.nil_test).to be nil
      expect(Object.new._?.nil_test).to be_a(NilConditional)
    end

    it 'should return NilConditional when method returns nil using block' do
      expect(Object.new._?.nil_test {}).to be_a(NilConditional)
    end
  end
end
