class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :price, precision: 5, scale: 2
      t.belongs_to :book, index: true
      t.belongs_to :order, index: true
    end
  end
end
