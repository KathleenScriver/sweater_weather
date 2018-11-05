class DarkSkyService
  attr_reader :lat, :lng
  def initialize(lat, lng)
    @lat = lat
    @lng = lng
  end

  def current_weather
    all_weather_data[:currently]
  end

  def hourly_weather
    all_weather_data[:hourly][:data]
  end

  def daily_weather
    all_weather_data[:daily][:data]
  end

  private

  def conn
    @conn ||= Faraday.new(url: 'https://api.darksky.net')
  end

  def all_weather_data
    @response ||= conn.get("/forecast/#{ENV['DARK_SKY_API_KEY']}/#{lat},#{lng}")
    JSON.parse(@response.body, symbolize_names: true)
  end
end
