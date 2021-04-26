require 'rails_helper'

RSpec.describe 'Background Image Api' do
  describe 'happy path' do
    it "sends background image for a given city" do
      location = 'denver,co'
      get "/api/v1/backgrounds?location=#{location}"
      expect(response).to be_successful
    end
  end
end