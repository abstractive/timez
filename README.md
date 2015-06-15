# Timez

Timez is the API implementation of timezonedb for Ruby. Can use to get World Clock from the time zone or location for the Ruby Applications by json or xml.

Timez gem use the power of [celluloid](https://github.com/celluloid/celluloid) for concurrent API requests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timez'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timez

## Usage

First of all Register on [timezonedb](http://timezonedb.com/register) to get your key to access the API.

Get Time by time zone,
```ruby
time = Timez.get_time('Asia/Colombo', 'YOUR_API_KEY')
```

Here is the time zone list, [time zone list](http://timezonedb.com/time-zones)

Get Time by location,
```ruby
time = Timez::Location.get_time('LATITUDE', 'LONGITUDE', 'YOUR_API_KEY')
```

Get Time as XML,
```ruby
time = Timez::XML.get_time('Asia/Colombo', 'YOUR_API_KEY')
```


## Contributing

1. Fork it ( https://github.com/abstractive/timez/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
=======

---

**Developer:** @[dilumnavanjana](https://github.com/dilumnavanjana)

**Mentor:** @[digitalextremist](https://github.com/digitalextremist)
