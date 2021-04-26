require 'rails_helper'

RSpec.describe DailyWeather do
  it "exists" do
    data = {:dt=>1619287200,
    :sunrise=>1619266137,
    :sunset=>1619315203,
    :moonrise=>1619305320,
    :moonset=>1619262300,
    :moon_phase=>0.41,
    :temp=>{:day=>56.82, :min=>38.21, :max=>65.64, :night=>53.37, :eve=>62.73, :morn=>38.21},
    :feels_like=>{:day=>53.53, :night=>38.21, :eve=>59.77, :morn=>38.21},
    :pressure=>1010,
    :humidity=>28,
    :dew_point=>24.3,
    :wind_speed=>7.45,
    :wind_deg=>48,
    :wind_gust=>8.16,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"chance of rain", :icon=>"red"}],
    :clouds=>100,
    :pop=>0,
    :uvi=>6.7}

    daily_weather = DailyWeather.new(data)

    expect(daily_weather).to be_a DailyWeather
    expect(daily_weather.date).to be_a Time
    expect(daily_weather.sunset).to be_a Time
    expect(daily_weather.sunrise).to be_a Time
    expect(daily_weather.max_temp).to eq(65.64)
    expect(daily_weather.max_temp).to be_a Float
    expect(daily_weather.min_temp).to eq(38.21)
    expect(daily_weather.min_temp).to be_a Float
    expect(daily_weather.conditions).to eq("chance of rain")
    expect(daily_weather.conditions).to be_a String
    expect(daily_weather.icon).to eq("red")
    expect(daily_weather.icon).to be_a String
  end
end