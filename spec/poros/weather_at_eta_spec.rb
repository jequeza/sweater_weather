require 'rails_helper'

RSpec.describe WeatherAtEta do
  it "exists" do
    data = {:dt=>1619568000,
            :temp=>65.37,
            :feels_like=>62.64,
            :pressure=>1004,
            :humidity=>22,
            :dew_point=>26.33,
            :uvi=>0.62,
            :clouds=>11,
            :visibility=>10000,
            :wind_speed=>10.71,
            :wind_deg=>276,
            :wind_gust=>13.42,
            :weather=>[{:id=>801, :main=>"Clouds", :description=>"hello world", :icon=>"02d"}],
            :pop=>0.31}

    weather = WeatherAtEta.new(data)
    expect(weather).to be_a WeatherAtEta
    expect(weather.conditions).to be_a String
    expect(weather.conditions).to eq("hello world")
    expect(weather.temperature).to be_a Float
    expect(weather.temperature).to eq(65.37)
  end
end