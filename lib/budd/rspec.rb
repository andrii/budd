module Budd
  module RSpec
    module Core
      module Formatters
        module ExceptionPresenter
          def exception_lines
            hint = Hint.for(exception)

            return super unless hint

            super + ['', *hint.lines, '']
          end

          module_function :exception_lines
        end
      end
    end
  end
end

module RSpec
  module Core
    module Formatters
      class ExceptionPresenter
        prepend Budd::RSpec::Core::Formatters::ExceptionPresenter
      end
    end
  end
end
