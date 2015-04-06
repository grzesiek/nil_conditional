describe Object do
  context 'test method' do
    it 'should raise error when receiving test_method' do
      expect { Object.new.test_method }.to raise_error(NoMethodError)
    end

    it 'should not raise error when receiving test_method' do
      expect { Object.new._?.test_method }.to_not raise_error
    end

    it 'should return NilConditional instance when received unknown method' do
      expect(Object.new._?.test_method).to be_a(NilConditional)
    end

    it 'should support chained methods with nil conditional' do
      expect { Object.new._?.test_method.foo.bar.car.cow }.to_not raise_error
      expect(Object.new._?.test_method.foo.bar.car.cow).to be_a(NilConditional)
    end

    it 'should support methods with arguments' do
      expect { Object._?.test_method_with_args(1, 2, 3) }.to_not raise_error
      expect(Object._?.test_method_with_args(1, 2, 3)).to be_a(NilConditional)
    end

    it 'should support methods with blocks' do
      expect(Object._?.test_with_block { 'test' }).to be_a(NilConditional)
      expect(%w(a b)._?.delete_if { |i| i == 'b' }).to eq(['a'])
    end
  end
end
