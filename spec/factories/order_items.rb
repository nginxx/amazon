FactoryGirl.define do
  factory :order_item do
    price 9.99
    quantity 4
    book
    order
  end
end
