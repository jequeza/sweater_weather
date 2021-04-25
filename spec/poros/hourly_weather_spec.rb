require 'rails_helper'

RSpec.describe HourlyWeather do
  it "exists" do
    data = {:dt=>1619323200,
     :temp=>53.37,
     :feels_like=>50.23,
     :pressure=>1005,
     :humidity=>39,
     :dew_point=>29.41,
     :uvi=>0,
     :clouds=>100,
     :visibility=>10000,
     :wind_speed=>4.65,
     :wind_deg=>253,
     :wind_gust=>8.03,
     :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
     :pop=>0}

    hourly_weather = HourlyWeather.new(data)

    expect(hourly_weather).to be_a HourlyWeather
    expect(hourly_weather.temperature).to eq(53.37)
    expect(hourly_weather.temperature).to be_a Float
    expect(hourly_weather.time).to eq(23)
    expect(hourly_weather.time).to be_an Integer
    expect(hourly_weather.conditions).to eq("overcast clouds")
    expect(hourly_weather.conditions).to be_a String
    expect(hourly_weather.icon).to eq("04n")
    expect(hourly_weather.icon).to be_a String
  end
end