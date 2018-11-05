class ForecastFacadeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  set_type :ForecastFacade
  attributes :location, :current_weather, :hourly_temps, :daily_weather
end
