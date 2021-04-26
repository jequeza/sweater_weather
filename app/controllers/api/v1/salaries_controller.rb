class Api::V1::SalariesController <  ApplicationController
  def index
    destination = GeoLocationFacade.location(params[:destination])
    destination_information = DestinationFacade.destination_metrics(destination, params[:destination])
    serialize_salaries = SalariesSerializer.new(destination_information)
    render json: serialize_salaries
  end
end