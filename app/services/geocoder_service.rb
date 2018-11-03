class GeocoderService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def geometry
    geocoder_data[:results].first[:geometry][:location]
  end

  private

  def conn
    Faraday.new(url: 'https://maps.googleapis.com')
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def geocoder_data
    get_json("/maps/api/geocode/json?address=#{location}&key=#{ENV['GOOGLE_API_KEY']}")
  end
end
