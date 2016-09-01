FactoryGirl.define do
  factory :restaurant do
    cuisine
    name "test rest"
    address "123 Fake Street"
    phone_number 12345678
    seats 100
    association :owner, factory: :user
    description "What a lovely place this is"
    opens_at Time.now
    closes_at Time.now
  end
end
