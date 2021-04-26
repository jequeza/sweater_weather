class Forecast
  attr_reader :current_weather,
              :daily_weather,
              :hourly_weather,
              :id

  def initialize(data)
    @id = id
    @current_weather = current_weather_object(data[:current])
    @daily_weather = daily_weather_object(data[:daily].first(5))
    @hourly_weather = hourly_weather_object(data[:hourly].first(8))
  end

  def hourly_weather_object(data)
    data.map do |hour_data|
      HourlyWeather.new(hour_data)
    end
  end

  def daily_weather_object(data)
    data.map do |day_data|
      DailyWeather.new(day_data)
    end
  end

  def current_weather_object(data)
    CurrentWeather.new(data)
  end
end