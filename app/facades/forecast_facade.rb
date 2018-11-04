class ForecastFacade
  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = 1
  end

  def get_lat
    geocode_data.geometry[:lat]
  end

  def get_lng
    geocode_data.geometry[:lng]
  end

  def weather
  # DarkSkyService.new(coordinates)
  conn = Faraday.new(url: 'https://api.darksky.net')
  response = conn.get("/forecast/#{ENV['DARK_SKY_API_KEY']}/[latitude],[longitude]")

  end

  private

  def geocode_data
    @geocode ||= GeocoderService.new(location)
  end
end
