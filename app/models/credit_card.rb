class CreditCard < ApplicationRecord
  belongs_to :customer
  has_many :orders
  validates :number, :cvv, :expiration_month, :expiration_year,
            :first_name, :last_name, presence: true
end
