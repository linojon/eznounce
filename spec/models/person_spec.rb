require 'spec_helper'

describe Person do
  it { should validate_presence_of :name }

  it { should allow_value('jon@linowes.com').for(:address_email) }

  %W{ jon jon.com jon@ jon@linowes }.each do |addr|
    it { should_not allow_value(addr).for(:address_email) }
  end

  it { should have_many(:memberships) }

  it { should have_many(:groups).through(:memberships) }

  it { should have_many(:messages) }


end
