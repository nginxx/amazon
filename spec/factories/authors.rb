FactoryGirl.define do
  factory :author do
    first_name { FFaker::NameUA.first_name_male }
    last_name { FFaker::NameUA.last_name_male }
  end
end
