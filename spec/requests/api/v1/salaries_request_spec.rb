require 'rails_helper'

RSpec.describe 'Salaries Api' do
  describe 'happy path' do
    it "sends tech jobs salary information for the given ubran area" do
      get '/api/v1/salaries?destination=austin'

      expect(response).to be_successful
    end
  end
end