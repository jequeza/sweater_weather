require 'rails_helper'

RSpec.describe GeoLocationFacade do
  describe "class methods" do
    describe "::location", :vcr do
      it "returns location object with the given city coordinates" do
        location = 'chicago,il'
        location_coordinate_obj = GeoLocationFacade.location(location)
        expect(location_coordinate_obj).to be_a Location
        expect(location_coordinate_obj.latitude).to eq(41.883229)
        expect(location_coordinate_obj.latitude).to be_a Float
        expect(location_coordinate_obj.longitude).to eq(-87.632398)
        expect(location_coordinate_obj.longitude).to be_a Float
      end
    end
  end
end