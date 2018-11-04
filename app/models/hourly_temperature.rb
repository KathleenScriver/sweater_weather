class HourlyTemperature
  attr_reader :time, :temperature

  def initialize(time, temperature)
    @time = time
    @temperature = temperature
  end

  def time
    Time.at(@time).strftime('%l %p')
  end
end
