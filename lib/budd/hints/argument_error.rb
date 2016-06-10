module Budd
  module Hints
    class ArgumentError
      def initialize(exception)
      end

      def message
        <<-EOT.gsub(/^ {10}/, '')
          Method `inspect` is called with 1 argument, but it only accepts 0 arguments.
          Refactor `def inspect` into `def inspect(arg1)` or call `inspect` instead of `inspect(arg1)`.
        EOT
      end
    end
  end
end
