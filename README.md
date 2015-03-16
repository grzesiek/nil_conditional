# nil-conditional

Nil Conditional Operator in Ruby (`_?`).

This is my approach to create Nil Conditional Operator in Ruby. 

This is very simple, and it is merely an experiment, so use it on your own risk.

Nil Conditional Operator is inspired by Null Conditional Operator introduced in C# 6.0.

## Installation

`nil_conditional` is gemified and available on RubyGems.

## Usage

```ruby

non_existent_method_?
=> nil

Object.new.non_existent_method
NoMethodError: undefined method `non_existent_method` for #<Object:0x007f74eec002c8>

Object.new.non_existent_method_?
=> nil

"test_string".sub_?("_string", '_case')
=> "test_case"

:test_string.sub_?("string", "case")
=> nil

Object.foo_?.bar_?.car_?.cow_?
=> nil
```
## Issues

* It doesn't work with methods that include special characters (like operators, and ?!=)
* It doesn't work with local variables as there is no simple way to pass binding of receiver to `method_missing` without block

## Discussion

Feel free to submit ideas via issues and discuss better solution to Nil Conditional Operator in Ruby

## License

This is free software, licensed under MIT License. See LICENSE.txt file.
