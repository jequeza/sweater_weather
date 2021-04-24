require 'rails_helper'

describe 'Forecast Api' do
  describe 'happy path' do
    it 'sends weather information for a given city' do
      get '/api/v1/forecast?location=denver,co'

      expect(response).to be_successful
    end
  end
end