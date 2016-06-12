# budd

[![Build Status](https://travis-ci.org/andrii/budd.svg?branch=master)](https://travis-ci.org/andrii/budd)
[![Code Climate](https://codeclimate.com/github/andrii/budd/badges/gpa.svg)](https://codeclimate.com/github/andrii/budd)

budd is an RSpec and Minitest extension that adds the hints on fixing the Ruby Core exceptions to the failing specs output.

When you write tests first for the code that doesn't exist yet, standard errors drive the implementation until expectations can be run. budd hints suggest the changes to the implementation necessary to make the tests pass.

The following errors are supported:
* [ArgumentError](https://relishapp.com/andrii/budd/docs/rspec/argumenterror)

## Installation

Add budd to the Gemfile:
```ruby
group :test do
  gem 'budd', github: 'andrii/budd'
end
```

and run `bundle install`.

## Setup

Load budd in the spec helper file:
```ruby
require 'budd'
```

## Usage

Run the specs as you normally would and see the hints in failing specs between the error message and a backtrace:
```
$ bundle exec ruby spec/example_spec.rb 
Run options: --seed 24779

# Running:

E

Finished in 0.000895s, 1117.0089 runs/s, 0.0000 assertions/s.

  1) Error:
Procompsognathus#test_0001_anonymous:
ArgumentError: wrong number of arguments (given 1, expected 0)

Method `chitter` was called with 1 argument, but it only accepts 0 arguments.
Refactor `def chitter` into `def chitter(arg1)` or call `chitter` instead of `chitter(arg1)`.

    spec/example_spec.rb:5:in `chitter'
    spec/example_spec.rb:12:in `block (2 levels) in <main>'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

## Documentation

Refer to the [Relish docs](http://www.relishapp.com/andrii/budd/docs) for examples of hints for supported Ruby exceptions.

## Testing

Run all the tests with:
```
$ bundle exec rake
```

or just the unit tests with:
```
$ bundle exec rake test
```

and only the integration tests with:
```
$ bundle exec cucumber
```

## License

MIT License
