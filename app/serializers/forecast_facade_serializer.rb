class ForecastFacadeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  set_type :ForecastFacade
  attributes :location, :current_weather, :hourly_temps

  # def current
  #   object.current_weather
  # end
  #
  # def hourly
  #   object.hourly_temps
  # end

end
