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
    end
  end
end