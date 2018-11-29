class ForecastFacade
  include LocationFacade

  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = nil
  end

  def current_weather
    CurrentWeather.new(weather_service.current_weather)
  end

  def hourly_temps
    weather_service.hourly_weather.map do |hour_data|
      HourlyTemperature.new(hour_data[:time], hour_data[:temperature])
    end.take(12)
  end

  def daily_weather
    weather_service.daily_weather.map do |daily_data|
      DailyWeather.new(daily_data)
    end
  end

  private

  def weather_service
    @service ||= DarkSkyService.new(get_lat, get_lng)
  end
end
