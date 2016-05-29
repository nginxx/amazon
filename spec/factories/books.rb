FactoryGirl.define do
  factory :book do
    title { FFaker::Product.product_name }
    description { FFaker::Lorem.paragraph }
    price 19.99
    in_stock 24
    author
    category
  end
end
