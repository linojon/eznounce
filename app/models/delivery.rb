class Delivery < ActiveRecord::Base
  validates :address_type, presence: true, inclusion: { in: Person::ADDRESS_TYPES }

  belongs_to :message
  belongs_to :person
end
