class CurrentWeatherSerializer
  include FastJsonapi::ObjectSerializer
  set_type :CurrentWeather
  attributes :time,
             :summary,
             :icon,
             :temperature,
             :feels_like,
             :humidity,
             :visibility,
             :uv_index
end
