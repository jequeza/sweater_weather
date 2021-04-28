class RoadTripService
  def self.trip(from, to)
    response = connection.get do |f|
      f.params['key'] = ENV['GEO_KEY']
      f.params['from'] = from
      f.params['to'] = to
      f.params['narrativeType'] = 'none'
    end
    parse(response)
  end

  private
    def self.connection
      conn ||= Faraday.new(url: 'http://www.mapquestapi.com/directions/v2/route')
    end

    def self.parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end