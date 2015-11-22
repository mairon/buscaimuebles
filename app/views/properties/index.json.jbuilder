json.array!(@properties) do |property|
  json.extract! property, :id, :name, :area, :price, :description, :property_type_id, :interest, :status, :user_id, :bed_rooms, :bath_rooms, :address, :county_id, :state_id, :city_id, :latitude, :longitude, :video_url, :property_option_id
  json.url property_url(property, format: :json)
end
