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
      it "sad path returns impossible for a trip that can not be possible", :vcr do
        from = 'chicago,il'
        to = 'london,uk'

        trip = RoadTripFacade.road_trip(from, to)
        expect(trip.travel_time).to eq("impossible trip")
        expect(trip.start_city).to eq(from)
        expect(trip.end_city).to eq(to)
        expect(trip.weather_at_eta.conditions).to be_nil
        expect(trip.weather_at_eta.temperature).to be_nil
      end
    end
  end
end