class ForecastFacade
  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = 1
  end

  def coordinates
    GeocoderService.new(location).geometry
  end
end
