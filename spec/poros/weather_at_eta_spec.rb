require 'rails_helper'

RSpec.describe WeatherAtEta do
  it "exists" do
    data = {
            :temp=>65.37,
            :weather=>[{:id=>801, :main=>"Clouds", :description=>"hello world", :icon=>"02d"}]
            }

    weather = WeatherAtEta.new(data)
    expect(weather).to be_a WeatherAtEta
    expect(weather.conditions).to be_a String
    expect(weather.conditions).to eq("hello world")
    expect(weather.temperature).to be_a Float
    expect(weather.temperature).to eq(65.37)
  end
end