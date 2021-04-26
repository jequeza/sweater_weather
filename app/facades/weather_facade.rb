class WeatherFacade
  def self.weather_conditions(latitude, longitude)
    location_forecast = WeatherService.get_forecast(latitude, longitude)
    forecast = Forecast.new(location_forecast)
  end
end