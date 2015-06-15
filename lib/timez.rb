require 'timez/location'
require 'timez/xml'
require 'http'
require 'json'

$URL = "http://api.timezonedb.com"

module Timez
  
  class << self

    def get_time(time_zone, key)
      response = HTTP.get($URL, :params => { :zone => time_zone, :key => key, :format => "json" }).to_s
      JSON[response]
    end

    def get_time_utc(time_zone, key)
      hash = get_time(time_zone, key)
      Time.at(hash['timestamp']).utc
    end

    def get_time_zone(time_zone, key)
      hash = get_time(time_zone, key)
      Time.at(hash['timestamp'])
    end

    def get_time_timestamp(time_zone, key)
      hash = get_time(time_zone, key)
      hash['timestamp']
    end

    def get_time_json(time_zone, key)
      get_time(time_zone, key)
    end
  end
end
