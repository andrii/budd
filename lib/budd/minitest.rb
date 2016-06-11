module Budd
  module Minitest
    module UnexpectedError
      def message
        hint = Hint.for(exception)

        return super unless hint

        message = super.split("\n")

        lines = message.shift
        lines << "\n\n#{hint.message}\n"
        lines << message.join("\n")
      end
    end
  end
end

module Minitest
  class UnexpectedError
    prepend Budd::Minitest::UnexpectedError
  end
end
