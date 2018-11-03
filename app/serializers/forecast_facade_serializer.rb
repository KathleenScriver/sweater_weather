class ForecastFacadeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast_facade
  set_id :id
  attributes :location
end
