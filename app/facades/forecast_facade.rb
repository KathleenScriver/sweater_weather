class ForecastFacade
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
    end
  end

  def daily_weather
    weather_service.daily_weather.map do |daily_data|
      DailyWeather.new(daily_data)
    end
  end

  private

  def geocode_data
    @geocode ||= GeocoderService.new(location)
  end

  def weather_service
    @service ||= DarkSkyService.new(get_lat, get_lng)
  end

  def get_lat
    geocode_data.geometry[:lat]
  end

  def get_lng
    geocode_data.geometry[:lng]
  end
end
