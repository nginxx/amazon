class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
    end
  end
end
