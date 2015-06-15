module Timez
  class Location
    
    def self.get_time(lat, lng, key)
      response = HTTP.get($URL, :params => { :lat => lat, :lng => lng, :key => key, :format => "json" }).to_s
      JSON[response]
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
