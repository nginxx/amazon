class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.integer :in_stock
      t.belongs_to :author, index: true
      t.belongs_to :category, index: true
    end
  end
end
