class BackgroundFacadeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :Background
  attribute :location_image
end
