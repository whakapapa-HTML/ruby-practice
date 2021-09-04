class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string :number
      t.string :date_of_birth

      t.timestamps
    end
  end
end
