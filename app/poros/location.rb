class Location
  attr_reader :latitude, :longitude
  def initialize(data)
    @latitude = data[:results][0][:locations][0][:displayLatLng][:lat]
    @longitude = data[:results][0][:locations][0][:displayLatLng][:lng]
  end
end