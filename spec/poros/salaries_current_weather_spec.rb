require 'rails_helper'

RSpec.describe SalariesCurrentWeather do
  it "exists" do

    data = {:dt=>1619455093,
     :sunrise=>1619437916,
     :sunset=>1619485513,
     :temp=>74.4344444,
     :feels_like=>74.57,
     :pressure=>1014,
     :humidity=>64,
     :dew_point=>61.47,
     :uvi=>7.95,
     :clouds=>100,
     :visibility=>10000,
     :wind_speed=>11.5,
     :wind_deg=>150,
     :wind_gust=>21.85,
     :weather=>[{:id=>804, :main=>"Clouds", :description=>"Hello World", :icon=>"04d"}]}


    forecast = SalariesCurrentWeather.new(data)

    expect(forecast).to be_a SalariesCurrentWeather
    expect(forecast.summary).to eq('Hello World')
    expect(forecast.summary).to be_a String
    expect(forecast.temperature).to eq("74 F")
    expect(forecast.temperature).to be_a String
  end
end