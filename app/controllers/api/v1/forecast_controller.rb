class Api::V1::ForecastController <  ApplicationController
  def index
    location = GeoLocationFacade.location(params[:location])
    weather = WeatherFacade.weather_conditions(location.latitude, location.longitude)
    serialize_weather = ForecastSerializer.new(weather)
    render json: serialize_weather
  end
end