json.array!(@property_options) do |property_option|
  json.extract! property_option, :id, :name, :status
  json.url property_option_url(property_option, format: :json)
end
