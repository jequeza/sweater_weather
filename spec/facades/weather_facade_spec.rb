require 'rails_helper'

RSpec.describe WeatherFacade do
  describe "class methods" do
    describe "::weather_conditions" do
      it "it returns forecast object with the given geo coordinate", :vcr do
        lat = 30.264979
        lon = -97.746598

        forecast_object = WeatherFacade.weather_conditions(lat, lon)

        expect(forecast_object).to be_a Forecast
        expect(forecast_object.current_weather).to be_a CurrentWeather
        expect(forecast_object.daily_weather).to be_an Array
        expect(forecast_object.daily_weather.first).to be_a DailyWeather
        expect(forecast_object.hourly_weather).to be_an Array
        expect(forecast_object.hourly_weather.first).to be_a HourlyWeather
        expect(forecast_object.id).to be_nil
      end
    end
  end
end