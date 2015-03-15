describe Object do
  context 'test method' do
    it 'should not raise error when receiving test_method_?' do
      expect { Object.new.test_method }.to raise_error(NoMethodError)
    end

    it 'should not raise error when receiving test_method_?' do
      expect { Object.new.test_method_? }.to_not raise_error
    end

    it 'should return nil when received non existent method with nil conditional' do
      expect(Object.new.test_method_?).to be nil
    end

    it 'should support chained methods with nil conditional' do
      expect { Object.new.test_method_?.foo_?.bar_?.car_?.cow_? }.to_not raise_error
      expect(Object.new.test_method_?.foo_?.bar_?.car_?.cow_?).to be nil
    end

    it 'should support methods with arguments' do
      expect { Object.test_method_with_args_?(1, 2, 3) }.to_not raise_error
      expect(Object.test_method_with_args_?(1, 2, 3)).to be nil
    end
  end
end
