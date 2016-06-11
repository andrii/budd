module Budd
  class Hint
    def self.for(exception)
      klass = Budd::Hints.const_get(exception.class.name, false)
      klass.new(exception)
    rescue NameError
    end
  end
end
