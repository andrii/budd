Feature: ArgumentError

  Scenario: wrong number of arguments
    Given a file named "example_spec.rb" with:
      """ruby
      require 'minitest/autorun'
      require 'budd'

      describe 'Procompsognathus' do
        it do
          inspect('Procompsognathus')
        end
      end
      """
    When I run `ruby example_spec.rb`
    Then the output should contain:
      """
      Method `inspect` is called with 1 argument, but it only accepts 0 arguments.
      Refactor `def inspect` into `def inspect(arg1)` or call `inspect` instead of `inspect(arg1)`.
      """
