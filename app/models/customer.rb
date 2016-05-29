class Customer < ApplicationRecord
  has_many :orders
  has_many :ratings
  validates :email, :password, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  def create_order(data)
    raise(ArgumentError, 'Hash required') unless data.respond_to?(:hash)
    orders.create(data)
  end

  def return_order_in_progress(order_id)
    raise(ArgumentError, 'Integer required') unless order_id.respond_to?(:ceil)
    orders.find(order_id).update({state: 'in progress'})
  end
end
