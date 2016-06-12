module Budd
  class Hint
    def self.for(exception)
      klass = Budd::Hints.const_get(exception.class.name, false)
      hint  = klass.new(exception)

      hint if hint.lines
    rescue NameError
    end
  end
end
