class GeoLocationFacade
  def self.location(location)
    coordinates = GeoLocationService.get_coordinates(location)
    @location = Location.new(coordinates)
  end
end