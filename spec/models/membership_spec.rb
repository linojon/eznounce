require 'spec_helper'

describe Membership do
  it { should belong_to(:person) }
  it { should belong_to(:group) }
end
