require 'spec_helper'

describe Budd::Hints::ArgumentError do
  it 'returns a hint message for an exception in Ruby >= 2.3' do
    exception = ArgumentError.new('wrong number of arguments (given 1, expected 0)')
    exception.set_backtrace("example_spec.rb:6:in `inspect'")

    hint = Budd::Hints::ArgumentError.new(exception)
    _(hint.lines).must_equal [
      'Method `inspect` was called with 1 argument, but it only accepts 0 arguments.',
      'Refactor `def inspect` into `def inspect(arg1)` or call `inspect` instead of `inspect(arg1)`.'
    ]
  end

  it 'returns a hint message for an exception in Ruby < 2.3' do
    exception = ArgumentError.new('wrong number of arguments (2 for 1)')
    exception.set_backtrace("example_spec.rb:6:in `first'")

    hint = Budd::Hints::ArgumentError.new(exception)
    _(hint.lines).must_equal [
      'Method `first` was called with 2 arguments, but it only accepts 1 argument.',
      'Refactor `def first(arg1)` into `def first(arg1, arg2)` or call `first(arg1)` instead of `first(arg1, arg2)`.'
    ]
  end
end
