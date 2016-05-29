FactoryGirl.define do
  factory :book do
    title { FFaker::Lorem.words }
    description { FFaker::Lorem.paragraphs(2) }
    price 99.99
    in_stock 24
  end
end
