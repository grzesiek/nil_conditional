# nil-conditional

Nil Conditional Operator in Ruby.

This is my approach to create Nil Conditional Operator in Ruby. 

This is very simple, and it is merely an experiment, so use it on your own risk.

Nil Conditional Operator is inspired by Null Conditional Operator introduced in C# 6.0.


## Installation

`nil_conditional` is gemified and available on RubyGems.


## Usage

Use `?_` method as Nil Conditional Operator.
For example: `logger._?.log('some debug information')`

```ruby

# logger is nil
logger.foo.bar.car.cow
NoMethodError: undefined method `foo` for #<NilClass>

# logger is nil
logger._?.foo.bar.car.cow
=> #<NilConditional>

# logger exists and all methods are valid
logger._?.foo.bar.car.cow
=> "moooo"

# logger exists and all methods are valid
logger._?.foo.bar.car.cow
=> "moooo"

# logger exists but doesn't have warn method
logger._?.warn('some warning')
=> #<NilConditional>

# logger exists and have warn method, but foo is invalid
logger._?.warn('some warning').foo
=> NoMethodError: undefined method `foo`

logger._?.warn('some warning')._?.foo
=> #<NilConditional>

Object.new.non_existent_method
NoMethodError: undefined method `non_existent_method` for #<Object>

Object.new._?.non_existent_method
=> #<NilConditional>

Object.new._?.non_existent_method.nil?
=> true
```

`NilConditional` instances always return new NilConditional object if method is missing.
These objects are also `eql` to `nil`.


## Changelog

* Changes from version with major 1

  Previous version used different syntax

* Changes from version with major 0

  Previous version didn't support methods with special characters and there was no support for local variables
  Previous version used trailing `_?` as NilConditional operator. Current version uses preceding double underscore character `__`.


## Discussion

Feel free to submit ideas via issues and discuss better solution to Nil Conditional Operator in Ruby


## License

This is free software, licensed under MIT License. See LICENSE.txt file.
