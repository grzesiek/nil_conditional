describe Object do
  context 'test method' do
    it 'should raise error when receiving test_method' do
      expect { Object.new.test_method }.to raise_error(NoMethodError)
    end

    it 'should not raise error when receiving __test_method' do
      expect { Object.new.__test_method }.to_not raise_error
    end

    it 'should return NilConditional instance when received non existent method with preceding __' do
      expect(Object.new.__test_method).to be_a(NilConditional)
    end

    it 'should support chained methods with nil conditional' do
      expect { Object.new.__test_method.foo_?.bar_?.car_?.cow_? }.to_not raise_error
      expect(Object.new.__test_method.foo_?.bar_?.car_?.cow_?).to be_a(NilConditional)
    end

    it 'should support methods with arguments' do
      expect { Object.__test_method_with_args(1, 2, 3) }.to_not raise_error
      expect(Object.__test_method_with_args(1, 2, 3)).to be_a(NilConditional)
    end

    it 'should support methods with blocks' do
      expect(Object.__test_method_with_block{ a = 'b' }).to be_a(NilConditional)
      expect(['a', 'b'].__delete_if { |i| i == 'b' }).to eq([ 'a' ])
    end
  end
end
