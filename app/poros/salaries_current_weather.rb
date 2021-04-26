class SalariesCurrentWeather
  attr_reader :summary,
              :temperature

  def initialize(data)
    @summary = data[:current][:weather][0][:description]
    @temperature = format_temp(data[:current][:temp])
  end

  def format_temp(temperature)
    "#{temperature.round} F"
  end
end