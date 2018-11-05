module LocationFacade

  def geocode_data
    @geocode ||= GeocoderService.new(location)
  end

  def get_lat
    geocode_data.geometry[:lat]
  end

  def get_lng
    geocode_data.geometry[:lng]
  end
end
