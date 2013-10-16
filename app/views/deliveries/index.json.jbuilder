json.array!(@deliveries) do |delivery|
  json.extract! delivery, :message, :address_type
  json.url delivery_url(delivery, format: :json)
end
