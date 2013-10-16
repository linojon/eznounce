FactoryGirl.define do
  factory :person do
    name          { Faker::Name.name }
    address_email { Faker::Internet.email }
  end
end
