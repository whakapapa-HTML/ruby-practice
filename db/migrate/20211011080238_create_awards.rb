class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :number_of_award
      t.integer :jeans_id
      t.integer :nominee_id
      t.timestamps
    end
  end
end
