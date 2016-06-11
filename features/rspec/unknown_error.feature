Feature: Unknown error

  Scenario: uknown error is raised
    Given a file named "example_spec.rb" with:
      """ruby
      require 'budd'

      class UnknownError < StandardError; end

      describe do
        it do
          raise UnknownError, 'unknown error'
        end
      end
      """
    When I run `rspec example_spec.rb`
    Then the output should contain:
      """
           UnknownError:
             unknown error
           # ./example_spec.rb:7:in `block (2 levels) in <top (required)>'
      """
