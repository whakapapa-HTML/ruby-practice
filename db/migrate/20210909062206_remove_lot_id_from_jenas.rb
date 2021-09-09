class RemoveLotIdFromJenas < ActiveRecord::Migration[5.2]
  def change
    remove_column :jeans, :lot_id, :integer
  end
end
