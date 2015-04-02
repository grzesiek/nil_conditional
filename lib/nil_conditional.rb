# NilConditional Operator in Ruby

class Object
  def method_missing(name, *params)
    if name =~ /^__.+$/
      original = name.to_s.sub(/^__/, '').to_sym

      if block_given? && original =~ /^\w+$/
        binding = Proc.new.binding
        if binding.local_variable_defined?(original)
          var = binding.local_variable_get(original)
          return var unless var.nil?
        end
      end

      if respond_to?(original)
        return_value = block_given? ? send(original, *params, &Proc.new) : 
          send(original, *params)
        return return_value unless return_value.nil?
      end

      NilConditional.new
    else
      super
    end
  end
end

class NilConditional
  def method_missing(name, *params)
    return self.class.new
  end

  def nil?
    true
  end

  def ==(other)
    return true if other == nil
    super
  end

  def eql?(other)
    return true if other.eql?(nil)
    super
  end
end
