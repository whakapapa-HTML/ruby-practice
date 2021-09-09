class AddLotToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :lot_number, :string
  end
end
