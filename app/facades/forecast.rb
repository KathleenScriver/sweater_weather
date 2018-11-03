class Forecast
  attr_reader :location, :id

  def initialize(location)
    @location = location
    @id = 1
  end
end
