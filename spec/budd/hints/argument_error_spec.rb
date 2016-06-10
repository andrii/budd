require 'spec_helper'

describe Budd::Hints::ArgumentError do
  it 'returns a hint message for an exception' do
    exception = ArgumentError.new
    hint = Budd::Hints::ArgumentError.new(exception)
    _(hint.message).must_equal <<-EOT.gsub(/^ {6}/, '')
      Method `inspect` is called with 1 argument, but it only accepts 0 arguments.
      Refactor `def inspect` into `def inspect(arg1)` or call `inspect` instead of `inspect(arg1)`.
    EOT
  end
end
