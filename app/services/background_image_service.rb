class BackgroundImageService
  def self.get_image(image_description)
    response = connection.get do |f|
      f.params['query'] = image_description
      f.params['page'] = 1
      f.params['client_id'] = ENV['IMAGE_KEY']
    end
    parse(response)
  end


  private
    def self.connection
      conn ||= Faraday.new(url: "https://api.unsplash.com/search/photos")
    end

    def self.parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end