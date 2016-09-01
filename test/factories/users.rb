FactoryGirl.define do
  factory :user do
    first_name "Toby"
    last_name "Larone"
    password "password"
    confirm_password "password"
  end
end
