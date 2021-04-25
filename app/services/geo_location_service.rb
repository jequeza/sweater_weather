class GeoLocationService
  def self.get_coordinates(location)
    response = connection.get do |f|
      f.params['key'] = ENV['GEO_KEY']
      f.params['location'] = location
    end
    parse(response)
  end

  private
    def self.connection
      conn ||= Faraday.new(url: 'http://www.mapquestapi.com/geocoding/v1/address')
    end

    def self.parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end