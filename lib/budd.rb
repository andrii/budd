require 'budd/minitest' if defined?(Minitest)
require 'budd/rspec' if defined?(RSpec)

module Budd
  autoload :Hint, 'budd/hint'

  module Hints
    autoload :ArgumentError, 'budd/hints/argument_error'
  end
end
