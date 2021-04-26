require 'rails_helper'

RSpec.describe 'Background Image Api' do
  describe 'happy path' do
    it "sends background image for a given city" do
      location = 'denver,co'
      get "/api/v1/backgrounds?location=#{location}"
      expect(response).to be_successful

      background = JSON.parse(response.body, symbolize_names: true)
      expect(background).to have_key(:data)
      expect(background[:data]).to have_key(:type)
      expect(background[:data]).to have_key(:id)
      expect(background[:data]).to have_key(:attributes)
      expect(background[:data][:type]).to eq('image')
      expect(background[:data][:id]).to be_nil
      expect(background[:data][:attributes]).to have_key(:image)
      expect(background[:data][:attributes][:image]).to have_key(:location)
      expect(background[:data][:attributes][:image][:location]).to eq(location)
      expect(background[:data][:attributes][:image][:location]).to be_a String
      expect(background[:data][:attributes][:image]).to have_key(:imgae_url)
      expect(background[:data][:attributes][:image][:imgae_url]).to be_a String
      expect(background[:data][:attributes][:image]).to have_key(:credit)
      expect(background[:data][:attributes][:image][:credit]).to have_key(:source)
      expect(background[:data][:attributes][:image][:credit][:source]).to be_a String
      expect(background[:data][:attributes][:image][:credit]).to have_key(:author)
      expect(background[:data][:attributes][:image][:credit][:author]).to be_a String
      expect(background[:data][:attributes][:image][:credit]).to have_key(:logo)
      expect(background[:data][:attributes][:image][:credit][:author]).to be_a String
    end
  end
end