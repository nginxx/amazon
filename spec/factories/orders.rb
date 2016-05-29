FactoryGirl.define do
  factory :order do
    completed_date { FFaker::Time.date }
    total_price 9999.99
    state 'in progress'
  end
end
