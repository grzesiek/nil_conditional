describe 'local variables' do
  context 'test variable' do
    it 'should raise error when using non existent test variable' do
      expect { test_variable }.to raise_error(NameError)
    end

    it 'should not raise error when using  __test_variable{}' do
      expect { __test_variable{} }.to_not raise_error
    end

    it 'should return NilConditional instance when using non existent var with preceding __ and trailing block' do
      expect(__test_variable{}).to be_a(NilConditional)
    end

    it 'should support chained methods with nil conditional' do
      expect { __test_variable{}.foo_?.bar_?.car_?.cow_? }.to_not raise_error
      expect(__test_variable{}.foo_?.bar_?.car_?.cow_?).to be_a(NilConditional)
    end
  end
end
