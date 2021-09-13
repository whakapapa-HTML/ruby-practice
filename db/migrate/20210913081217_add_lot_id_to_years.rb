class AddLotIdToYears < ActiveRecord::Migration[5.2]
  def change
    add_column :years, :lot_id, :integer
  end
end
