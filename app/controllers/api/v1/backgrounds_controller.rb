class Api::V1::BackgroundsController < ApplicationController
  def index
    background_image = BackgroundImageFacade.find_image(params[:location])
    serialize_image = ImageSerializer.new(background_image)
    render json: serialize_image
  end
end