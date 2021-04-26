require 'rails_helper'

describe 'Forecast Api' do
  describe 'happy path' do
    it 'sends weather information for a given city', :vcr do
      get '/api/v1/forecast?location=denver,co'

      expect(response).to be_successful
      forecast = JSON.parse(response.body, symbolize_names: true)

      expect(forecast[:data][:type]).to eq('forecast')
      expect(forecast[:data][:attributes]).to have_key(:id)
      expect(forecast[:data][:attributes]).to have_key(:current_weather)
      expect(forecast[:data][:attributes]).to have_key(:daily_weather)
      expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
      expect(forecast[:data][:attributes]).to_not have_key(:minutely)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:datetime)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunset)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:temperature)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:feels_like)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:humidity)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:uvi)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:visibility)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:conditions)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:icon)
      expect(forecast[:data][:attributes][:daily_weather].length).to eq(5)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:date)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunset)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:max_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:min_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:icon)
      expect(forecast[:data][:attributes][:hourly_weather].length).to eq(8)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:time)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:temperature)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:icon)
    end
  end
end