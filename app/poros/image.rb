class Image
  attr_reader :id,
              :image,
              :credit

  def initialize(data, location)
    @id = nil
    @image = generate_image_obj(data[:results][0], location)
    @credit = generate_credit_obj(data[:results][0][:user])
  end

  def generate_image_obj(data, location)
    ImageUrl.new(data, location)
  end

  def generate_credit_obj(data)
    Credit.new(data)
  end
end