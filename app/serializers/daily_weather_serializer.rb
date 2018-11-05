class DailyWeatherSerializer
  include FastJsonapi::ObjectSerializer
  set_type :DailyWeather

  attributes :icon,
             :temp_high,
             :temp_low

 attribute :day do |object|
   Time.at(object.time).strftime('%A')
 end

 attribute :chance_of_rain do |object|
   (object.chance_of_rain * 100).to_i.to_s + '%'
 end
end
