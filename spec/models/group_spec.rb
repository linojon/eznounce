require 'spec_helper'

describe Group do
  it { should validate_presence_of :name }

  it { should have_many(:memberships) }

  it { should have_many(:people).through(:memberships) }

  it { should have_many(:messages) }

end
