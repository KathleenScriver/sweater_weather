class ForecastFacade
  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = 1
  end

  def get_lat
    geocoder.geometry[:lat]
  end

  def get_lng
    geocoder.geometry[:lng]
  end

  private

  def geocoder
    @geocoder_service ||= GeocoderService.new(location)
  end
end
