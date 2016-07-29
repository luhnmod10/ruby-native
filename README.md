# Luhn (Mod 10)

[![Build Status](https://travis-ci.org/luhnmod10/ruby-native.svg?branch=master)](https://travis-ci.org/luhnmod10/ruby-native)

A fast and simple in-place implementation of the [luhn check algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm) in Ruby using a C extension. Implementations in other languages can be found at [github.com/luhnmod10](https://github.com/luhnmod10).

## Usage

Install the gem:

```
gem install luhnmod10-native
```

Or add to the `Gemfile`:

```ruby
gem "luhnmod10-native"
```

Then:

```ruby
require "luhnmod10/native"
Luhnmod10::Native.valid?("4242424242424242")
```

## Contributing

Contributions are welcome! If you can improve the execution time of this implementation without increasing its complexity, please open a pull request. To test your change, run `make` in the repository to run the tests and the benchmarks.
