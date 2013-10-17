class Message < ActiveRecord::Base
  validates :text, presence: true

  belongs_to :sender, class_name: 'Person'
  belongs_to :group

  def sent?
    sent_at.present?
  end
end
