require 'rails_helper'

RSpec.describe "Sessions Request Api" do
  describe "happy path" do
    it "can log in a user" do
      user_create_params = {
                      "email": "email@example.com",
                      "password": "hello_world",
                      "password_confirmation": "hello_world"
                    }
      headers = { "CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate(user_create_params)
      created_user = User.last
      user_login_params = {
                      "email": "email@example.com",
                      "password": "hello_world"
                    }

      headers = { "CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json" }
      post "/api/v1/sessions", headers: headers, params: JSON.generate(user_login_params)
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
      expect(response.status).to eq(200)
    end
  end
  describe "sad path" do
    it "can not log in an user if user does not exist in our db" do
      user_login_params = {
                      "email": "email@example.com",
                      "password": "hello_world"
                    }

      headers = { "CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json" }
      post "/api/v1/sessions", headers: headers, params: JSON.generate(user_login_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(400)
      expect(user_response).to have_key(:error)
      expect(user_response).to_not have_key(:data)
      expect(user_response[:error]).to eq("invalid parameters")
    end
  end
end