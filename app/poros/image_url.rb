class ImageUrl
  attr_reader :location, :image_url
  def initialize(data, location)
    @location = location
    @image_url = data[:urls][:raw]
  end
end