require 'rails_helper'

RSpec.describe "Users Request Api" do
  describe "happy path" do
    it "can create a new user" do
      user_params = {
                      "email": "john_larson@example.com",
                      "password": "pass123",
                      "password_confirmation": "pass123"
                    }
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/users", headers: headers, params: JSON.generate(user: user_params)
      created_user = User.last
      expect(response).to be_successful

      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response).to have_key(:data)
      expect(user_response[:data]).to have_key(:type)
      expect(user_response[:data]).to have_key(:id)
      expect(user_response[:data]).to have_key(:attributes)
      expect(user_response[:data][:attributes]).to have_key(:email)
      expect(user_response[:data][:attributes]).to have_key(:api_key)
      expect(user_response[:data][:attributes]).to have_key(:id)
      expect(user_response[:data][:attributes][:email]).to be_a String
      expect(user_response[:data][:attributes][:api_key]).to be_a String
      expect(user_response[:data][:attributes][:id].to_i).to eq(created_user.id)
      expect(user_response[:data][:attributes][:email]).to eq(created_user.email)
      expect(user_response[:data][:type]).to eq('users')
      expect(response.status).to eq(201)
    end
  end
end