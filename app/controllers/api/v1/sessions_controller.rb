class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      serialize_user = UsersSerializer.new(user)
      render json: serialize_user, status: 200
    else
      invalid_params
    end
  end
end