json.array!(@memberships) do |membership|
  json.extract! membership, :person, :group
  json.url membership_url(membership, format: :json)
end
