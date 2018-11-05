class CurrentWeather
  attr_reader :time,
              :summary,
              :icon,
              :temperature,
              :feels_like,
              :humidity,
              :visibility,
              :uv_index,
              :id

  def initialize(data_hash)
    @time = data_hash[:time]
    @summary = data_hash[:summary]
    @icon = data_hash[:icon]
    @temperature = data_hash[:temperature]
    @feels_like = data_hash[:apparentTemperature]
    @humidity = data_hash[:humidity]
    @visibility = data_hash[:visibility]
    @uv_index = data_hash[:uvIndex]
    @id = nil
  end
end
