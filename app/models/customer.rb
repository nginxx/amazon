class Customer < ApplicationRecord
  has_many :orders
  has_many :ratings
  validates :email, :password, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  def create_order(order)
    orders << order
  end

  def return_order_in_progress(order)
    order.state = 'in progress'
    order.save
  end
end
