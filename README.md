# MusicCast

Control System for Yamaha MusicCast written in Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'music_cast'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install music_cast

## Configuration

The configuration options can be set by using the `configure` helper

```ruby
MusicCast.configure do |c|
  c.ip_address = '192.168.0.144'
end
```

The following is the full list of available configuration options:

```ruby
ip_address # The static IP address of your speaker
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/karlentwistle/music_cast.
