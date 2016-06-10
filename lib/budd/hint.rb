module Budd
  class Hint
    def self.for(exception)
      klass = Budd::Hints.const_get(exception.class.name)
      klass.new(exception)
    end
  end
end
