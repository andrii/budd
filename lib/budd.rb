require 'budd/minitest' if defined?(Minitest)

module Budd
  autoload :Hint, 'budd/hint'

  module Hints
    autoload :ArgumentError, 'budd/hints/argument_error'
  end
end
