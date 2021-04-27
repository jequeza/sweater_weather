class Api::V1::UsersController < ApplicationController
  def create
    user = User.create!(user_params)
    serialize_user = UsersSerializer.new(user)
    render json: serialize_user, status: 201
  end

  private
    def user_params
      params[:email] = params[:email].downcase
      params.permit(:email, :password, :password_confirmation)
    end
end