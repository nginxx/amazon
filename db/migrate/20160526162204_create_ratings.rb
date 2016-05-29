class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.text :review
      t.integer :rating_scale
      t.belongs_to :customer, index: true
      t.belongs_to :book, index: true
    end
  end
end
