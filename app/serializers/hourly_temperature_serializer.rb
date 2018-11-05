class HourlyTemperatureSerializer
  include FastJsonapi::ObjectSerializer
  set_type :HourlyTemps
  attribute :temperature
  attribute :time do |object|
    Time.at(object.time).strftime('%l %p')
  end
end
