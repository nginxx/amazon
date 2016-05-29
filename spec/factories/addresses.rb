FactoryGirl.define do
  factory :address do
    address { FFaker::AddressUA.street_address }
    zip_code { FFaker::AddressUA.zip_code }
    city { FFaker::AddressUA.city }
    phone { FFaker::PhoneNumberBR.mobile_phone_number }
    country { FFaker::AddressUA.country }
  end
end
