FactoryGirl.define do
  factory :reservation do
    user
    restaurant
    time Time.now
    date Date.new(2016, 9, 9)
    party_size 10
  end
end
