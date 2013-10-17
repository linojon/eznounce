class Group < ActiveRecord::Base
  validates :name, presence: true

  has_many :memberships
  has_many :people, through: :memberships
  has_many :messages
end
