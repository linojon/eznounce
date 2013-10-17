require 'spec_helper'

describe Delivery do
  it { should belong_to(:person) }
  it { should belong_to(:message) }
  it { should validate_presence_of :address_type }
  it { should ensure_inclusion_of(:address_type).in_array(['email','sms','voice'])}
end
