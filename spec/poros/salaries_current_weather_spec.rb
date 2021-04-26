require 'rails_helper'

RSpec.describe SalariesCurrentWeather do
  it "exists" do

    data = {:lat=>30.265,
 :lon=>-97.7466,
 :timezone=>"America/Chicago",
 :timezone_offset=>-18000,
 :current=>
  {:dt=>1619459712,
   :sunrise=>1619437916,
   :sunset=>1619485513,
   :temp=>73.232,
   :feels_like=>78.06,
   :pressure=>1014,
   :humidity=>57,
   :dew_point=>61.45,
   :uvi=>9.61,
   :clouds=>100,
   :visibility=>10000,
   :wind_speed=>10.36,
   :wind_deg=>150,
   :wind_gust=>25.32,
   :weather=>[{:id=>804, :main=>"Clouds", :description=>"Hello World", :icon=>"04d"}]}}


    forecast = SalariesCurrentWeather.new(data)

    expect(forecast).to be_a SalariesCurrentWeather
    expect(forecast.summary).to eq('Hello World')
    expect(forecast.summary).to be_a String
    expect(forecast.temperature).to eq("73 F")
    expect(forecast.temperature).to be_a String
  end
end