FactoryGirl.define do
  sequence(:title) { |i| "Category_#{i}" }
  factory :category do
    title { FactoryGirl.generate(:title) }
  end
end
