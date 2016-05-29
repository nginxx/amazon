class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :phone
      t.string :country
    end
  end
end
