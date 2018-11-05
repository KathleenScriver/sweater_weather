class BackgroundFacade
  include LocationFacade

  attr_reader :id

  def initialize(location)
    @location = location
    @id = nil
  end
end
