class Message < ActiveRecord::Base
  validates :text, presence: true

  belongs_to :person
  belongs_to :group

  def sent?
    sent_at.present?
  end
end
