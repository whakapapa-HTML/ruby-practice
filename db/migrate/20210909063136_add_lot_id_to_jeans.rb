class AddLotIdToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :lot_id, :integer
  end
end
