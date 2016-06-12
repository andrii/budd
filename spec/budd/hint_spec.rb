require 'spec_helper'

describe Budd::Hint do
  it 'returns a hint object for an exception' do
    exception = ArgumentError.new('wrong number of arguments (2 for 1)')
    exception.set_backtrace("example_spec.rb:6:in `inspect'")
    hint = Budd::Hint.for(exception)
    _(hint).must_be_instance_of Budd::Hints::ArgumentError
  end

  it 'returns nil for an unknown exception type' do
    UnknownError = Class.new
    exception = UnknownError.new
    hint = Budd::Hint.for(exception)
    _(hint).must_be_nil
  end

  it 'returns nil for an unknown exception message' do
    exception = ArgumentError.new('unknown message')
    hint = Budd::Hint.for(exception)
    _(hint).must_be_nil
  end
end
