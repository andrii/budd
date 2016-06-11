require 'spec_helper'

describe Budd::Hint do
  it 'returns a hint object for an exception' do
    exception = ArgumentError.new
    hint = Budd::Hint.for(exception)
    _(hint).must_be_instance_of Budd::Hints::ArgumentError
  end

  it 'returns nil for unknown exception' do
    UnknownError = Class.new
    exception = UnknownError.new
    hint = Budd::Hint.for(exception)
    _(hint).must_be_nil
  end
end
