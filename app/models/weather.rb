class Weather
    #def self.navigator.geolocation.getCurrentPosition((location))
    def self.get_weather_at_coordinates(coordinates)
        lat = lat || "37.7767"
        lon = lon || "-122.4233"
        
        uri = URI.parse("https://api.darksky.net/forecast/#{ENV["DARK_SKY_API_KEY"]}/#{lat},#{lon}")
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        
        data = http.get(uri.request_uri)
        data.body
    end
end