class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :credit_card
  belongs_to :billing_address, class_name: 'Address'
  belongs_to :shipping_address, class_name: 'Address'
  has_many :order_items

  validates :total_price, :completed_date, :state, presence: true
  validates :state, inclusion: { in: %w(in\ progress completed shipped), message: 'Not valid state' }

  def add_book_to_order(book_id, qty)
    unless book_id.respond_to?(:ceil) && qty.respond_to?(:ceil)
      raise(ArgumentError, 'Integer required')
    end
    book = Book.find(book_id)
    order_items.create(book_id: book.id, quantity: qty, price: book.price)
  end

  def set_total_price
    self.total_price = calc_order_price
  end

  private

  def calc_order_price
    order_items.inject(0) { |sum, i| sum + i.quantity * i.price }
  end
end
