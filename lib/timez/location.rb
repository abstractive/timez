module Timez
  class Location
    @url = "http://api.timezonedb.com"
    
    def self.get_time(lat, lng, key)
      response = HTTP.get(@url, :params => { :lat => lat, :lng => lng, :key => key, :format => "json" }).to_s
      hash = JSON[response]
    end

    def self.get_time_utc(lat, lng, key)
      hash = get_time(lat, lng, key)
      Time.at(hash['timestamp']).utc
    end

    def self.get_time_zone(lat, lng, key)
      hash = get_time(lat, lng, key)
      Time.at(hash['timestamp'])
    end

    def self.get_time_timestamp(lat, lng, key)
      hash = get_time(lat, lng, key)
      hash['timestamp']
    end

    def self.get_time_json(lat, lng, key)
      hash = get_time(lat, lng, key)
    end
  end
end