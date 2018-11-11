# MusicCast

Ruby Control System for Yamaha MusicCast speakers

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'music_cast'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install music_cast

## Prerequisites

For the HTTP API to function correctly in an integrated system, the MusicCast devices must be on a fixed or bound IP Address. To avoid network loops through the wireless “extend” functionality of MusicCast products you should set the device to wired or wireless only - through the web GUI on the MusicCast device:

![screen shot 2018-03-25 at 22 22 48](https://user-images.githubusercontent.com/666397/37880091-294978fc-307b-11e8-8985-3ee4e3f11fc6.png)

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

## Usage

This gem is intended to be a thin wrapper around the existing `YamahaExtendedControl/v1` API. The class structures are influenced by the existing API structure. This is a list of all the functions that can currently be performed with this gem.

### Status

Get device status

```ruby
status = MusicCast::GetStatus.new
status.to_json # Current status as JSON
status.to_hash # Current status as Hash
```

### Power Functions

Set power status and enable/disable auto-standby

```ruby
power = MusicCast::SetPower.new
power.on                    # Power on
power.standby               # Standby
power.toggle                # Power Toggle
power.enable_auto_standby   # Enable Auto Power Standby
power.disable_auto_standby  # Disable Auto Power Standby
```

### Volume Commands

Set sound volume level

```ruby
volume = MusicCast::SetVolume.new
volume.to(11)         # Set volume to n valid range 0..100
volume.increment      # Increment volume by 1 step
volume.increment(10)  # Increment volume by n steps
volume.decrement      # Decrement volume by 1 step
volume.decrement(10)  # Decrement volume by n steps
```

### Mute

Enable or disable sound

```ruby
mute = MusicCast::SetMute.new
mute.on  # Set Mute on
mute.off # Set Mute off
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/karlentwistle/music_cast.
