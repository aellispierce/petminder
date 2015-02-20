require 'faker'
FactoryGirl.define do
  factory :pet do
    name { Faker::Name.name }
    breed { Faker::Name.name }
    association :user_id, factory: :user
  end
end
