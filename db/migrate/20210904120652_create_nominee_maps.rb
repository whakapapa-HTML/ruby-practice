class CreateNomineeMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :nominee_maps do |t|
      t.string :nominee_id
      t.integer :post_id

      t.timestamps
    end
  end
end
