class CurrentWeather
  attr_reader :time,
              :summary,
              :temperature,
              :feels_like,
              :humidity,
              :visibility,
              :uv_index

  def initialize(data_hash)
    @time = data_hash[:time]
    @summary = data_hash[:summary]
    @temperature = data_hash[:temperature]
    @feels_like = data_hash[:apparentTemperature]
    @humidity = data_hash[:humidity]
    @visibility = data_hash[:visibility]
    @uv_index = data_hash[:uvIndex]
  end

  def time
    Time.at(@time).strftime('%l:%M %p')
  end
end
