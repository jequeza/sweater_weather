require 'rails_helper'

RSpec.describe RoadTrip do
  it "exists" do
    weather_data = {
            :temp=>9099.99,
            :weather=>[{:id=>801, :main=>"Clouds", :description=>"hello world", :icon=>"02d"}]
            }

    weather_obj = WeatherAtEta.new(weather_data)
    start_city = 'rockford,il'
    end_city = 'chicago,il'
    duration = "01:00:00"

    trip = RoadTrip.new(weather_obj, start_city, end_city, duration)
    expect(trip).to be_a RoadTrip
    expect(trip.weather_at_eta.temperature).to eq(weather_data[:temp])
    expect(trip.weather_at_eta.conditions).to eq(weather_data[:weather][0][:description])
    expect(trip.start_city).to eq(start_city)
    expect(trip.end_city).to eq(end_city)
    expect(trip.travel_time).to eq(duration)
  end
end