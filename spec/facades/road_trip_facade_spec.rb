require 'rails_helper'

RSpec.describe RoadTripFacade do
  describe "class methods" do
    describe "::road_trip" do
      it "returns a RoadTrip object from start and end locations", :vcr do
        from = 'chicago,il'
        to = 'austin,tx'

        trip = RoadTripFacade.road_trip(from, to)
        expect(trip).to be_a RoadTrip
        expect(trip.start_city).to eq(from)
        expect(trip.end_city).to eq(to)
        expect(trip.travel_time).to be_a String
        expect(trip.weather_at_eta).to be_a WeatherAtEta
        expect(trip.weather_at_eta.conditions).to be_a String
        expect(trip.weather_at_eta.temperature).to be_a Float
      end
    end
  end
end