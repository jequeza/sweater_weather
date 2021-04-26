require 'rails_helper'

RSpec.describe WeatherService do
  describe "class methods" do
    describe ":current_weather", :vcr do
      it "returns current weather info for given coordinates" do
        latitude = 30.264979
        longitude = -97.746598
      end
    end
  end
end