class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :shirt, index: true
      t.references :users, index: true
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :reviews, :shirts
    add_foreign_key :reviews, :users
  end
end
