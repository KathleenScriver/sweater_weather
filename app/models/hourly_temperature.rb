class HourlyTemperature
  attr_reader :time, :temperature, :id

  def initialize(time, temperature)
    @time = time
    @temperature = temperature
    @id = nil
  end
end
