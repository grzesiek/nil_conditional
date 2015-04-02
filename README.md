# nil-conditional

Nil Conditional Operator in Ruby.

This is my approach to create Nil Conditional Operator in Ruby. 

This is very simple, and it is merely an experiment, so use it on your own risk.

Nil Conditional Operator is inspired by Null Conditional Operator introduced in C# 6.0.


## Installation

`nil_conditional` is gemified and available on RubyGems.


## Usage

Use preceding double underscore (`__`) for methods (for ex. `__method`)
Use preceding double underscore and trailing block for local variables  (for ex. `__var{}`)

```ruby

# logger is nil
logger.foo.bar.car.cow
NoMethodError: undefined method `foo` for #<NilClass>

# logger is nil or doesn't exist
__logger{}.foo.bar.car.cow
=> #<NilConditional>

# object exists and all methods are valid
__object{}.foo.bar.car.cow
=> "moooo"

# logger exists but doesn't have warn method
logger.__warn('some warning')
=> #<NilConditional>

__non_existent_local_variable{}
=> #<NilConditional>

__non_existent_method
=> #<NilConditional>

Object.new.non_existent_method
NoMethodError: undefined method `non_existent_method` for #<Object>

Object.new.__non_existent_method
=> #<NilConditional>

Object.new.__non_existent_method.nil?
=> true

__new_object.foo.bar.car_?.cow_?
=> nil
```

`NilConditional` instances always return new NilConditional object if method is missing.
These objects are also `eql` to `nil`.


## Changelog

* Changes from version with major 0

  * Previous version didn't support methods with special characters and there was no support for local variables.
  * Previous version used trailing `_?` as NilConditional operator. Current version uses preceding double underscore character `__`.


## Discussion

Feel free to submit ideas via issues and discuss better solution to Nil Conditional Operator in Ruby

## License

This is free software, licensed under MIT License. See LICENSE.txt file.
