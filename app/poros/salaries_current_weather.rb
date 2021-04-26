class SalariesCurrentWeather
  attr_reader :summary,
              :temperature

  def initialize(data)
    @summary = data[:weather][0][:description]
    @temperature = format_temp(data[:temp])
  end

  def format_temp(temperature)
    "#{temperature.round} F"
  end
end