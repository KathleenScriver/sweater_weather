class FlickrService
  attr_reader :lat, :lon
  def initialize(lat, lon)
    @lat = lat
    @lon = lon
  end

  def one_image
    options = {
               api_key: ENV['FLICKR_API_KEY'],
               lat: lat,
               lon: lon,
               method: "flickr.photos.search",
               format: "json",
               nojsoncallback: 1,
               extras: "url_o",
               tags: "parks"
    }

    conn = Faraday.new(url: 'https://api.flickr.com')
    response = conn.get do |req|
      req.url "/services/rest/", options
    end
    all_photos = JSON.parse(response.body, symbolize_names: true)[:photos][:photo]
    photos_with_links = all_photos.select do |photo|
      photo.keys.include?(:url_o)
    end
    x = photos_with_links.shuffle.pop[:url_o]
  end
end
