class CreateYears < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.string :date_of_birth

      t.timestamps
    end
  end
end
