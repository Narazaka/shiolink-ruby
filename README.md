# [Shiolink](https://github.com/Narazaka/shiolink-ruby)

[![Gem](https://img.shields.io/gem/v/shiolink.svg)](https://rubygems.org/gems/shiolink)
[![Gem](https://img.shields.io/gem/dtv/shiolink.svg)](https://rubygems.org/gems/shiolink)
[![Gemnasium](https://gemnasium.com/Narazaka/shiolink-ruby.svg)](https://gemnasium.com/Narazaka/shiolink-ruby)
[![Inch CI](http://inch-ci.org/github/Narazaka/shiolink-ruby.svg)](http://inch-ci.org/github/Narazaka/shiolink-ruby)
[![Build Status](https://travis-ci.org/Narazaka/shiolink-ruby.svg)](https://travis-ci.org/Narazaka/shiolink-ruby)
[![codecov.io](https://codecov.io/github/Narazaka/shiolink-ruby/coverage.svg?branch=master)](https://codecov.io/github/Narazaka/shiolink-ruby?branch=master)
[![Code Climate](https://codeclimate.com/github/Narazaka/shiolink-ruby/badges/gpa.svg)](https://codeclimate.com/github/Narazaka/shiolink-ruby)

SHIORI Protocol Parser / Builder for Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shiolink'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shiolink

## Usage

```ruby
require 'shiolink'

def load(dirpath)
end

def unload
  exit
end

def request(req)
end

shiolink = Shiolink.new(method(:load), method(:unload), method(:request))
shiolink.start
```

## API

[API Document](https://narazaka.github.io/shiolink-ruby/index.html)

## License

This is released under [MIT License](http://narazaka.net/license/MIT?2016).
