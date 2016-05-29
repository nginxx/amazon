FactoryGirl.define do
  factory :customer do
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
    first_name { FFaker::NameUA.first_name_male }
    last_name { FFaker::NameUA.last_name_male }
  end
end
