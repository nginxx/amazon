FactoryGirl.define do
  factory :order do
    completed_date { FFaker::Time.date }
    total_price 9999.99
    state 'in progress'
    customer
    credit_card
    association :billing_address, factory: :address
    association :shipping_address, factory: :address
  end
end
