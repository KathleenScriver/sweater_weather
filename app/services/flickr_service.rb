class FlickrService
  attr_reader :lat, :lon
  def initialize(lat, lon)
    @lat = lat
    @lon = lon
  end

  def one_image
    all_photos.shuffle.pop[:url_o]
  end

  def all_photos
    JSON.parse(response.body, symbolize_names: true)[:photos][:photo].select do |photo|
      photo.keys.include?(:url_o)
    end
  end 

  private

  def conn
    Faraday.new(url: 'https://api.flickr.com')
  end

  def response
    conn.get do |req|
      req.url "/services/rest/", options
    end
  end

  def options
    {
     api_key: ENV['FLICKR_API_KEY'],
     lat: lat,
     lon: lon,
     method: "flickr.photos.search",
     format: "json",
     nojsoncallback: 1,
     extras: "url_o",
     tags: "parks"
    }
  end
end
