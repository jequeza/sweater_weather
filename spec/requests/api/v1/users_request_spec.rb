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
  describe "sad path" do
    it "can not create a new user if the email is missing" do
      user_params = {
                      "email": "",
                      "password": "pass123",
                      "password_confirmation": "pass123"
                    }
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/users", headers: headers, params: JSON.generate(user: user_params)
      created_user = User.last
      expect(response.status).to eq(400)
      expect(created_user).to be_nil
    end
    it "can not create a new user if the password is missing" do
      user_params = {
                      "email": "hello@hello.com",
                      "password": "",
                      "password_confirmation": ""
                    }
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/users", headers: headers, params: JSON.generate(user: user_params)
      created_user = User.last
      expect(response.status).to eq(400)
      expect(created_user).to be_nil
    end
    it "can not create a new user if the password and password_confirmation do not match" do
      user_params = {
                      "email": "email@email.com",
                      "password": "pass123",
                      "password_confirmation": "pass12332453"
                    }
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/users", headers: headers, params: JSON.generate(user: user_params)
      created_user = User.last
      expect(response.status).to eq(400)
      expect(created_user).to be_nil
    end
    it "can not create a new user if the email is already taken" do
      user1_params = {
                      "email": "email@example.com",
                      "password": "pass123",
                      "password_confirmation": "pass123"
                    }
      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate(user: user1_params)

      expect(response.status).to eq(201)
      user2_params = {
                      "email": "email@example.com",
                      "password": "pass12311",
                      "password_confirmation": "pass12311"
                    }
      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate(user: user2_params)

      expect(response.status).to eq(400)
    end
  end
end