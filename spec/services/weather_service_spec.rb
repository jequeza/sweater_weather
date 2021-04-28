require 'rails_helper'

RSpec.describe WeatherService do
  describe "class methods" do
    describe "::get_forecast" do
      it "it gets curret, daily, hourly forecast data by given geo coordinates", :vcr do
        lat = 30.264979
        lon = -97.746598

        weather_data = WeatherService.get_forecast(lat, lon)
        expect(weather_data).to be_a Hash
        expect(weather_data).to have_key(:lat)
        expect(weather_data).to have_key(:lon)
        expect(weather_data).to have_key(:timezone)
        expect(weather_data).to have_key(:timezone_offset)
        expect(weather_data).to have_key(:current)
        expect(weather_data).to have_key(:hourly)
        expect(weather_data).to have_key(:daily)
        expect(weather_data).to_not have_key(:minutely)
        expect(weather_data[:current]).to have_key(:weather)
        expect(weather_data[:hourly][0]).to have_key(:weather)
        expect(weather_data[:daily][0]).to have_key(:weather)
        expect(weather_data[:current]).to have_key(:temp)
        expect(weather_data[:hourly][0]).to have_key(:temp)
        expect(weather_data[:daily][0]).to have_key(:temp)
        expect(weather_data[:daily].length).to eq(8)
        expect(weather_data[:hourly].length).to eq(48)
      end
      it "it returns wrong latitude with wrong data type sad path ", :vcr do
        lat = "hello"
        lon = -97.746598

        weather_data = WeatherService.get_forecast(lat, lon)
        expect(weather_data).to_not have_key(:current)
        expect(weather_data).to_not have_key(:daily)
        expect(weather_data).to_not have_key(:hourly)
        expect(weather_data).to have_key(:cod)
        expect(weather_data).to have_key(:message)
        expect(weather_data[:cod]).to eq("400")
        expect(weather_data[:message]).to eq("wrong latitude")
      end
      it "it returns wrong longitude with wrong data type sad path", :vcr do
        lat = 30.264979
        lon = "hello"

        weather_data = WeatherService.get_forecast(lat, lon)
        expect(weather_data).to_not have_key(:current)
        expect(weather_data).to_not have_key(:daily)
        expect(weather_data).to_not have_key(:hourly)
        expect(weather_data).to have_key(:cod)
        expect(weather_data).to have_key(:message)
        expect(weather_data[:cod]).to eq("400")
        expect(weather_data[:message]).to eq("wrong longitude")
      end
    end
    describe "::get_destination_forecast" do
      it "returns hourly weather data with given coordinates", :vcr do
        lat = 30.264979
        lon = -97.746598

        destination_weather = WeatherService.get_destination_forecast(lat, lon)
        expect(destination_weather).to be_a Hash
        expect(destination_weather).to have_key(:lat)
        expect(destination_weather).to have_key(:lon)
        expect(destination_weather).to have_key(:timezone)
        expect(destination_weather).to have_key(:timezone_offset)
        expect(destination_weather).to_not have_key(:current)
        expect(destination_weather).to have_key(:hourly)
        expect(destination_weather).to_not have_key(:daily)
        expect(destination_weather).to_not have_key(:minutely)
        expect(destination_weather[:hourly][0]).to have_key(:weather)
        expect(destination_weather[:hourly][0]).to have_key(:temp)
        expect(destination_weather[:hourly].length).to eq(48)
      end
      it "it returns wrong latitude with wrong data type sad path", :vcr do
        lat = "hello"
        lon = -97.746598

        destination_weather = WeatherService.get_destination_forecast(lat, lon)
        expect(destination_weather).to_not have_key(:current)
        expect(destination_weather).to_not have_key(:daily)
        expect(destination_weather).to_not have_key(:hourly)
        expect(destination_weather).to have_key(:cod)
        expect(destination_weather).to have_key(:message)
        expect(destination_weather[:cod]).to eq("400")
        expect(destination_weather[:message]).to eq("wrong latitude")
      end
      it "it returns wrong longitude with wrong data type sad path", :vcr do
        lat = 30.264979
        lon = "hello"

        destination_weather = WeatherService.get_destination_forecast(lat, lon)
        expect(destination_weather).to_not have_key(:current)
        expect(destination_weather).to_not have_key(:daily)
        expect(destination_weather).to_not have_key(:hourly)
        expect(destination_weather).to have_key(:cod)
        expect(destination_weather).to have_key(:message)
        expect(destination_weather[:cod]).to eq("400")
        expect(destination_weather[:message]).to eq("wrong longitude")
      end
    end
  end
end