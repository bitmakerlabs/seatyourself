FactoryGirl.define do
  factory :user do
    first_name "Toby"
    last_name "Larone"
    password "password"
    password_confirmation "password"
  end
end
