module Budd
  module Hints
    class ArgumentError
      attr_reader :exception

      def initialize(exception)
        @exception = exception
      end

      def message
        <<-EOT.gsub(/^ {10}/, '')
          Method `#{method_name}` was called with #{given_arguments} #{pluralize('argument', given_arguments)}, but it only accepts #{expected_arguments} #{pluralize('argument', expected_arguments)}.
          Refactor `def #{method_signature(method_name, expected_arguments)}` into `def #{method_signature(method_name, given_arguments)}` or call `#{method_signature(method_name, expected_arguments)}` instead of `#{method_signature(method_name, given_arguments)}`.
        EOT
      end

      private

      def method_name
        exception.backtrace.first[/`(.+)'$/, 1]
      end

      def given_arguments
        arguments.first.to_i
      end

      def expected_arguments
        arguments.last.to_i
      end

      def arguments
        @arguments ||= /(\d+).+ (\d+)/.match(exception.message).captures
      end

      def pluralize(singular, count)
        count == 1 ? singular : singular + 's'
      end

      def method_signature(method_name, count)
        if count == 0
          method_name
        else
          args = Array.new(count, 'arg')
          count.times { |i| args[i] = args[i] + i.next.to_s }
          method_name + "(#{args.join(', ')})"
        end
      end
    end
  end
end
