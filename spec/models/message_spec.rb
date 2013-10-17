require 'spec_helper'

describe Message do
  it { should belong_to(:sender).class_name('Person') }
  it { should belong_to(:group) }

  it "sent?" do
    msg = Message.new
    expect(msg.sent?).to be_false
    msg.sent_at = Time.zone.now
    expect(msg.sent?).to be_true
  end
end
