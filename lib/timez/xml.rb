module Timez
  class Xml    

    def self.get_time(time_zone, key)
      response = HTTP.get($URL, :params => { :zone => time_zone, :key => key, :format => "xml" }).to_s
    end

    def self.get_time_location(lat, lng, key)
      response = HTTP.get($URL, :params => { :lat => lat, :lng => lng, :key => key, :format => "xml" }).to_s
    end

  end
end
