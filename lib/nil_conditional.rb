# NilConditional Operator in Ruby

# Patch Object class
class Object
  def _?
    NilConditional.new(self)
  end
end

# Nil Conditional class
class NilConditional
  def initialize(object)
    @object = object
  end

  def method_missing(name, *params)
    if @object.respond_to?(name)
      return_value = nil
      if block_given?
        return_value = @object.public_send(name, *params, &Proc.new)
      else
        return_value = @object.public_send(name, *params)
      end
      return return_value unless return_value.nil?
    end
    self.class.new(@object)
  end

  def nil?
    true
  end

  def ==(other)
    return true if other.nil?
    super
  end

  def eql?(other)
    return true if other.eql?(nil)
    super
  end
end
