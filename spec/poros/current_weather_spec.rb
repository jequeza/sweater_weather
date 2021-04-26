require 'rails_helper'

RSpec.describe CurrentWeather do
  it "exists" do
    data = {:dt=>1619319011,
     :sunrise=>1619266137,
     :sunset=>1619315203,
     :temp=>56.61,
     :feels_like=>53.71,
     :pressure=>1004,
     :humidity=>37,
     :dew_point=>30.83,
     :uvi=>0,
     :clouds=>99,
     :visibility=>10000,
     :wind_speed=>2.08,
     :wind_deg=>157,
     :wind_gust=>3.42,
     :weather=>[{:id=>804, :main=>"Clouds", :description=>"sunny and hot", :icon=>"pink pink"}]}

    current_weather = CurrentWeather.new(data)

    expect(current_weather).to be_a CurrentWeather
    expect(current_weather.datetime).to be_a Time
    expect(current_weather.sunset).to be_a Time
    expect(current_weather.sunrise).to be_a Time
    expect(current_weather.uvi).to eq(0)
    expect(current_weather.uvi).to be_a Integer
    expect(current_weather.visibility).to eq(10000)
    expect(current_weather.visibility).to be_a Integer
    expect(current_weather.humidity).to eq(37)
    expect(current_weather.humidity).to be_a Integer
    expect(current_weather.temperature).to eq(56.61)
    expect(current_weather.temperature).to be_a Float
    expect(current_weather.feels_like).to eq(53.71)
    expect(current_weather.feels_like).to be_a Float
    expect(current_weather.conditions).to eq("sunny and hot")
    expect(current_weather.conditions).to be_a String
    expect(current_weather.icon).to eq("pink pink")
    expect(current_weather.icon).to be_a String
  end
end