class CreateAwardMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :award_maps do |t|
      t.integer :award_id
      t.integer :jeans_id
      t.string :name

      t.timestamps
    end
  end
end
