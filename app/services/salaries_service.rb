class SalariesService
  def self.get_salaries(location)
    response = Faraday.get("https://api.teleport.org/api/urban_areas/slug%3A#{location}/salaries")
    parse(response)
  end

  private
    def self.parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end