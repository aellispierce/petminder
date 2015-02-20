require 'faker'
FactoryGirl.define do
  factory :pet do
    name { Faker::Name.name }
    breed { Faker::Name.name }
    association :user, factory: :user
  end
end
