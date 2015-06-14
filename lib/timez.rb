require 'timez/location'
require 'timez/xml'
require 'http'
require 'json'

module Timez
  
  class << self
    @url = "http://api.timezonedb.com"

    def get_time(time_zone, key)
      response = HTTP.get(@url, :params => { :zone => time_zone, :key => key, :format => "json" }).to_s
      hash = JSON[response]
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
      hash = get_time(time_zone, key)
    end
  end
end
