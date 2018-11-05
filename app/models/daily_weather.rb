class DailyWeather
  attr_reader :icon, :temp_high, :temp_low
  def initialize(daily_data)
    @day = daily_data[:time]
    @icon = daily_data[:icon]
    @chance_of_rain = daily_data[:precipProbability]
    @temp_high = daily_data[:temperatureHigh]
    @temp_low = daily_data[:temperatureLow]
  end

  def day
    Time.at(@day).strftime('%A')
  end

  def chance_of_rain
    (@chance_of_rain * 100).to_i.to_s + '%'
  end
end
