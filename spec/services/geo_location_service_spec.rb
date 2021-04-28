require 'rails_helper'

RSpec.describe GeoLocationService do
  describe "class methods" do
    describe "::get_coordinates/happy path", :vcr do
      it "returns geo location coordinate data for given location" do
        location = 'rockford,il'
        coordinate_data = GeoLocationService.get_coordinates(location)
        expect(coordinate_data).to be_a Hash
        expect(coordinate_data[:results]).to be_an Array
        expect(coordinate_data[:results][0][:providedLocation][:location]).to eq(location)
        expect(coordinate_data[:results][0][:locations][0]).to have_key(:displayLatLng)
      end
    end
    describe "::get_coordinates/sad path" do
      it "returns no data when the location is in an array", :vcr do
        location = ["zzziiiw111"]
        coordinate_data = GeoLocationService.get_coordinates(location)
        expect(coordinate_data).to be_a Hash
        expect(coordinate_data[:info][:statuscode]).to eq(400)
        expect(coordinate_data[:info][:messages][0]).to eq("Illegal argument from request: Insufficient info for location")
      end
    end
  end
end