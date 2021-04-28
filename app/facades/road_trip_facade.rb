class RoadTripFacade
  def self.road_trip(from, to)
    destination = GeoLocationFacade.location(to)
    forecast_data = WeatherService.get_destination_forecast(destination.latitude, destination.longitude)
    trip_data = RoadTripService.trip(from, to)
    if trip_data[:route][:formattedTime].nil?
      return impossible_location(from, to)
    else
      current_time = Time.now.to_datetime
      trip_time_duration = Time.parse(trip_data[:route][:formattedTime]).seconds_since_midnight.seconds
      arrival_time = current_time + trip_time_duration

      weather_at_arrival = find_hour(forecast_data[:hourly], arrival_time)
      weather_object_at_arrival = WeatherAtEta.new(weather_at_arrival[0])
      RoadTrip.new(weather_object_at_arrival, from, to, trip_data[:route][:formattedTime])
    end
  end

  private
    def self.find_hour(hourly_weather_collection, time)
      hourly_weather_collection.find_all do |weather|
        Time.at(weather[:dt]).hour == time.hour && Time.at(weather[:dt]).day == time.day
      end
    end

    def self.impossible_location(from, to)
      weather = WeatherAtEta.new({temp: nil, weather: [{description: nil}]})
      RoadTrip.new(weather, from, to, "impossible trip")
    end
end