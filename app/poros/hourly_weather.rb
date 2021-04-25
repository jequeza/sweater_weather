class HourlyWeather
  attr_reader :time,
              :temperature,
              :conditions,
              :icon

  def initialize(data)
  @time = convert_from_unix_time(data[:dt])
  @temperature = data[:temp]
  @conditions = data[:weather][0][:description]
  @icon = data[:weather][0][:icon]
  end

  private
    def convert_from_unix_time(unix_time)
      Time.at(unix_time).hour
    end
end