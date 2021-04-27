class BackgroundImageFacade
  def self.find_image(image_location)
    image_data = BackgroundImageService.get_image(image_location)
    image_object = Image.new(image_data, image_location)
  end
end