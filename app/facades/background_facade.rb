class BackgroundFacade
  include LocationFacade

  attr_reader :id

  def initialize(location)
    @location = location
    @id = nil
  end

  def location_image
    image_service.one_image
  end

  private

  def image_service
    FlickrService.new(get_lat, get_lng)
  end
end
