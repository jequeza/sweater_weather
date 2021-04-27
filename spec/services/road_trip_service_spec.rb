require 'rails_helper'

RSpec.describe RoadTripService do
  describe "class methods" do
    describe "::trip", :vcr do
      it "returns route data from a given location to a given location" do
        from_location = 'rockford,il'
        to_location = 'chicago,il'

        trip_data = RoadTripService.trip(from_location, to_location)
        expect(trip_data).to be_a Hash
        expect(trip_data).to have_key(:route)
        expect(trip_data).to have_key(:info)
        expect(trip_data[:route]).to have_key(:hasTollRoad)
        expect(trip_data[:route]).to have_key(:hasBridge)
        expect(trip_data[:route]).to have_key(:boundingBox)
        expect(trip_data[:route]).to have_key(:distance)
        expect(trip_data[:route]).to have_key(:hasTimedRestriction)
        expect(trip_data[:route]).to have_key(:hasTunnel)
        expect(trip_data[:route]).to have_key(:hasHighway)
        expect(trip_data[:route]).to have_key(:computedWaypoints)
        expect(trip_data[:route]).to have_key(:routeError)
        expect(trip_data[:route]).to have_key(:formattedTime)
        expect(trip_data[:route]).to have_key(:sessionId)
        expect(trip_data[:route]).to have_key(:hasAccessRestriction)
        expect(trip_data[:route]).to have_key(:realTime)
        expect(trip_data[:route]).to have_key(:hasSeasonalClosure)
        expect(trip_data[:route]).to have_key(:hasCountryCross)
        expect(trip_data[:route]).to have_key(:fuelUsed)
        expect(trip_data[:route]).to have_key(:legs)
        expect(trip_data[:route]).to have_key(:options)
        expect(trip_data[:route]).to have_key(:locations)
        expect(trip_data[:route]).to have_key(:time)
        expect(trip_data[:route]).to have_key(:hasUnpaved)
        expect(trip_data[:route]).to have_key(:locationSequence)
        expect(trip_data[:route]).to have_key(:hasFerry)
        expect(trip_data[:info]).to have_key(:statuscode)
        expect(trip_data[:info]).to have_key(:copyright)
        expect(trip_data[:info]).to have_key(:messages)
        expect(trip_data[:route][:formattedTime]).to be_a String
      end
    end
  end
end