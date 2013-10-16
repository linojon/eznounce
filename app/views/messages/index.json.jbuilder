json.array!(@messages) do |message|
  json.extract! message, :sender, :group, :text, :sent_at
  json.url message_url(message, format: :json)
end
