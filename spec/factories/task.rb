require 'faker'
FactoryGirl.define do
  factory :task do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentences(4) }
    time {Faker::Date.forward(100)}
    association :user, factory: :user

  end
end
