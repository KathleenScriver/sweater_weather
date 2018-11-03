class ForecastFacadeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast_facade
  attributes :location
end 
