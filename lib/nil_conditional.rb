require "nil_conditional/version"

module NilConditional

  class ::Object
    def method_missing(name, *params)
      if name =~ /^.*_\?$/
        original_method = name.to_s.sub(/_\?$/, '').to_sym
        return send(original_method, *params) if respond_to?(original_method)
        nil
      else
        super
      end
    end
  end

end
