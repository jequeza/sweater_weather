class WeatherService
  def self.get_forecast(latitude, longitude)
    response = connection.get do |f|
      f.params['lat'] = latitude
      f.params['lon'] = longitude
      f.params['appid'] = ENV['WEATHER_KEY']
      f.params['units'] = 'imperial'
      f.params['exclude'] = 'minutely'
    end
    parse(response)
  end

  private
    def self.connection
      conn ||= Faraday.new(url: 'https://api.openweathermap.org/data/2.5/onecall')
    end

    def self.parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end