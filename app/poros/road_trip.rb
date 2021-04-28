class RoadTrip
  attr_reader :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta,
              :id

  def initialize(weather_obj, start_location, finish_location, duration)
    @weather_at_eta = weather_obj
    @start_city = start_location
    @end_city = finish_location
    @travel_time = duration
    @id = nil
  end
end