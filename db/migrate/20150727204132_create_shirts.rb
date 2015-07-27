class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :brand
      t.string :sex
      t.integer :size_fit
      t.integer :pricing

      t.timestamps null: false
    end
  end
end
