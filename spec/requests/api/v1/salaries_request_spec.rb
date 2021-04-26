require 'rails_helper'

RSpec.describe 'Salaries Api' do
  describe 'happy path' do
    it "sends tech jobs salary information for the given ubran area" do
      location = 'austin'
      get "/api/v1/salaries?destination=#{location}"

      expect(response).to be_successful

      salaries = JSON.parse(response.body, symbolize_names: true)
      expect(salaries[:data][:type]).to eq('salaries')
      expect(salaries[:data][:attributes]).to have_key(:destination)
      expect(salaries[:data][:attributes]).to have_key(:forecast)
      expect(salaries[:data][:attributes]).to have_key(:salaries)
      expect(salaries[:data][:attributes][:destination]).to eq(location)
      expect(salaries[:data][:attributes][:destination]).to be_a String
      expect(salaries[:data][:attributes][:forecast]).to have_key(:summary)
      expect(salaries[:data][:attributes][:forecast]).to have_key(:temperature)
      expect(salaries[:data][:attributes][:forecast][:summary]).to be_a String
      expect(salaries[:data][:attributes][:forecast][:temperature]).to be_a String
      expect(salaries[:data][:attributes][:salaries]).to be_an Array
      expect(salaries[:data][:attributes][:salaries]).to have_key(:title)
      expect(salaries[:data][:attributes][:salaries]).to have_key(:min)
      expect(salaries[:data][:attributes][:salaries]).to have_key(:max)
      expect(salaries[:data][:attributes][:salaries].first[:title]).to be_an String
      expect(salaries[:data][:attributes][:salaries].first[:min]).to be_an String
      expect(salaries[:data][:attributes][:salaries].first[:max]).to be_an String
    end
  end
end