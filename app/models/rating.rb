class Rating < ApplicationRecord
  belongs_to :customer
  belongs_to :book
  validates :rating_scale, inclusion: { in: 1..10, message: 'Only integer from 1 to 10 allowed' }
end
