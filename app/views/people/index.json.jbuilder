json.array!(@people) do |person|
  json.extract! person, :name, :address_email
  json.url person_url(person, format: :json)
end
