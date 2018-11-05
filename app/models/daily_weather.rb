class DailyWeather
  attr_reader :icon,
              :temp_high,
              :temp_low,
              :time,
              :chance_of_rain,
              :id

  def initialize(daily_data)
    @time = daily_data[:time]
    @icon = daily_data[:icon]
    @chance_of_rain = daily_data[:precipProbability]
    @temp_high = daily_data[:temperatureHigh]
    @temp_low = daily_data[:temperatureLow]
    @id = nil
  end
end
