require 'rails_helper'

RSpec.describe BackgroundImageService do
  describe "class methods" do
    describe "::get_image/happy path", :vcr do
      it "returns image information that relates to a given city/location" do
        location = 'chicago,il'
        image_data = BackgroundImageService.get_image(location)
        expect(image_data).to be_a Hash
        expect(image_data).to have_key(:total)
        expect(image_data[:total]).to be_an Integer
        expect(image_data).to have_key(:total_pages)
        expect(image_data[:total_pages]).to be_an Integer
        expect(image_data).to have_key(:results)
        expect(image_data[:results]).to be_an Array
        expect(image_data[:results].first).to be_a Hash
        expect(image_data[:results].first).to have_key(:id)
        expect(image_data[:results].first).to have_key(:created_at)
        expect(image_data[:results].first).to have_key(:updated_at)
        expect(image_data[:results].first).to have_key(:promoted_at)
        expect(image_data[:results].first).to have_key(:width)
        expect(image_data[:results].first).to have_key(:height)
        expect(image_data[:results].first).to have_key(:color)
        expect(image_data[:results].first).to have_key(:blur_hash)
        expect(image_data[:results].first).to have_key(:description)
        expect(image_data[:results].first).to have_key(:alt_description)
        expect(image_data[:results].first).to have_key(:urls)
        expect(image_data[:results].first).to have_key(:links)
        expect(image_data[:results].first).to have_key(:categories)
        expect(image_data[:results].first).to have_key(:likes)
        expect(image_data[:results].first).to have_key(:liked_by_user)
        expect(image_data[:results].first).to have_key(:current_user_collections)
        expect(image_data[:results].first).to have_key(:sponsorship)
        expect(image_data[:results].first).to have_key(:user)
        expect(image_data[:results].first).to have_key(:tags)
        expect(image_data[:results].first[:urls]).to have_key(:raw)
        expect(image_data[:results].first[:urls][:raw]).to be_a String
        expect(image_data[:results].first[:urls]).to have_key(:full)
        expect(image_data[:results].first[:urls][:full]).to be_a String
        expect(image_data[:results].first[:urls]).to have_key(:regular)
        expect(image_data[:results].first[:urls][:full]).to be_a String
        expect(image_data[:results].first[:urls]).to have_key(:small)
        expect(image_data[:results].first[:urls][:small]).to be_a String
        expect(image_data[:results].first[:urls]).to have_key(:thumb)
        expect(image_data[:results].first[:urls][:thumb]).to be_a String
      end
    end
    describe "::get_image/sad path" do
      it "returns no results for random string", :vcr do
        location = "adfajo23323"
        image_data = BackgroundImageService.get_image(location)
        expect(image_data[:total]).to eq(0)
        expect(image_data[:total_pages]).to eq(0)
        expect(image_data[:results]).to eq([])
      end
      it "returns no results for negative float", :vcr do
        location = -34534.4
        image_data = BackgroundImageService.get_image(location)
        expect(image_data[:total]).to eq(0)
        expect(image_data[:total_pages]).to eq(0)
        expect(image_data[:results]).to eq([])
      end
    end
  end
end