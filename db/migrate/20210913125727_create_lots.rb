class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string :number
      t.integer :brand_id

      t.timestamps
    end
  end
end
