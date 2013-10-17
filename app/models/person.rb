class Person < ActiveRecord::Base
  validates :name, presence: true
  validate :address_email, :email_is_valid 

  has_many :memberships
  has_many :groups, through: :memberships
  has_many :messages, inverse_of: :sender

  ADDRESS_TYPES = %w(email sms voice)


  def email_is_valid
    # if email.blank?
    #   errors.add :email, "can't be blank"
    if address_email.present? and !( address_email =~ /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i )
      errors.add :address_email, "is invalid"
    end
  end

end
