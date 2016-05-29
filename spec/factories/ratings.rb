FactoryGirl.define do
  factory :rating do
    review { FFaker::Lorem.sentences }
    rating_scale 6
    book
    customer
  end
end
