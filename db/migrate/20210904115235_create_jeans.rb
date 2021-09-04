class CreateJeans < ActiveRecord::Migration[5.2]
  def change
    create_table :jeans do |t|
      t.integer :user_id
      t.integer :brand_id
      t.integer :lot_id
      t.integer :number_of_laundry
      t.datetime :date_of_purchase

      t.timestamps
    end
  end
end
