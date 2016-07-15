

FactoryGirl.define do
  factory :login do
    username  "honest"
    sequence(:email) {|n| "user#{n}@blow.com" }
    password "hjkhhkj"
    conformpassword { Faker::Name::first_name }
    mobilenumber "1"
  end


end
