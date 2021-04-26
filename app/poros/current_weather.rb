class CurrentWeather
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temperature,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon

  def initialize(current_weather_data)
    @datetime = convert_from_unix_time(current_weather_data[:dt])
    @sunrise = convert_from_unix_time(current_weather_data[:sunrise])
    @sunset = convert_from_unix_time(current_weather_data[:sunset])
    @temperature = current_weather_data[:temp]
    @feels_like = current_weather_data[:feels_like]
    @humidity = current_weather_data[:humidity]
    @uvi = current_weather_data[:uvi]
    @visibility = current_weather_data[:visibility]
    @conditions = current_weather_data[:weather][0][:description]
    @icon = current_weather_data[:weather][0][:icon]
  end


  private
    def convert_from_unix_time(unix_time)
      Time.at(unix_time)
    end
end