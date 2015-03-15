# nil-conditional

Nil Conditional Operator in Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nil_conditional'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nil_conditional

## Usage

```ruby
empty_object = Object.new
empty_object.non_existent_method_?
=> nil

empty_object_?
=> #<Object:0x00000002d89170> 

non_existent_object_?
=> nil
```

## License

This is free software, licensed under MIT License. See LICENSE.txt file.
