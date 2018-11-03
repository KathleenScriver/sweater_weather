class ForecastFacade
  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = 1
  end

  def get_lat
    GeocoderService.new(location)[:latitude]
  end

  def get_long
    GeocoderService.new(location)[:longitude]
  end
end
