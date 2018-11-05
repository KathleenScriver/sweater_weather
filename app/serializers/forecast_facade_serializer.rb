class ForecastFacadeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  set_type :ForecastFacade
  attributes :location,
             :current_weather,
             :hourly_temps,
             :daily_weather

  attribute :current_weather do |object|
    CurrentWeatherSerializer.new(object.current_weather)
  end

  attribute :daily_weather do |object|
    DailyWeatherSerializer.new(object.daily_weather)
  end
end
