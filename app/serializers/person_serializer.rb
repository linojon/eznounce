class PersonSerializer < ActiveModel::Serializer
  self.root = false
  attributes :id, :name, :address_email
end
