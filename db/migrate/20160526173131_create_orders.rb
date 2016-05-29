class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 7, scale: 2
      t.string :state, default: 'in progress'
      t.timestamp :completed_date
      t.belongs_to :customer, index: true
      t.belongs_to :credit_card, index: true
      t.belongs_to :billing_address, index: true
      t.belongs_to :shipping_address, index: true
    end
  end
end
