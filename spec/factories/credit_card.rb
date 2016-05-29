FactoryGirl.define do
  factory :credit_card do
    number '1111 1111 1111 1111'
    cvv 111
    expiration_month 01
    expiration_year 2018
    first_name { FFaker::NameUA.first_name_male }
    last_name { FFaker::NameUA.last_name_male }
    customer
  end
end
