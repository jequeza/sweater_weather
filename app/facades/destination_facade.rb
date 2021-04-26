class DestinationFacade
  def self.destination_metrics(location_obj, location)
    destination_weather_data = WeatherService.current_weather(location_obj.latitude, location_obj.longitude)
    destination_salaries_data = SalariesService.get_salaries(location)
    destination_object = Salaries.new(destination_weather_data, destination_salaries_data[:salaries], location)
  end
end