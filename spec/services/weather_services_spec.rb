require 'rails_helper'

RSpec.describe WeatherService do
  describe "class methods" do
    describe ":current_weather", :vcr do
      it "returns current weather info for given coordinates" do
        latitude = 30.264979
        longitude = -97.746598

        current_weather = WeatherService.current_weather(latitude, longitude)
        expect(current_weather).to be_a Hash
        expect(current_weather).to have_key(:current)
        expect(current_weather).to_not have_key(:hourly)
        expect(current_weather).to_not have_key(:daily)
        expect(current_weather[:current]).to have_key(:temp)
        expect(current_weather[:current]).to have_key(:weather)
        expect(current_weather[:current][:weather]).to be_an Array
        expect(current_weather[:current][:weather][0]).to have_key(:description)
      end
    end
  end
end