class GeocoderService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def geometry
    conn = Faraday.new(url: 'https://maps.googleapis.com')
    response = conn.get("/maps/api/geocode/json?address=#{location}&key=#{ENV['GOOGLE_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)[:results].first[:geometry][:location]
  end

  private

  # def conn
# end
end
