class DailyWeather
  attr_reader :date,
              :sunrise,
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon

  def initialize(data)
    @date = convert_from_unix_time(data[:dt])
    @sunrise = convert_from_unix_time(data[:sunrise])
    @sunset = convert_from_unix_time(data[:sunset])
    @max_temp = data[:temp][:max]
    @min_temp = data[:temp][:min]
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

  private
    def convert_from_unix_time(unix_time)
      Time.at(unix_time)
    end
end