class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :shirt, index: true
      t.references :users, index: true
      t.string :payment_method

      t.timestamps null: false
    end
    add_foreign_key :orders, :shirts
    add_foreign_key :orders, :users
  end
end
