class Api::V1::RoadTripController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if params[:origin].empty? || params[:destination].empty?
      invalid_params
    elsif user
      trip_object = RoadTripFacade.road_trip(params[:origin], params[:destination])
      serialize_trip = RoadtripSerializer.new(trip_object)
      render json: serialize_trip
    else
      render json: { error: 'Unauthorized' }, status: 401
    end
  end
end