class RemoveLotNumberFromJenas < ActiveRecord::Migration[5.2]
  def change
    remove_column :jeans, :lot_number
  end

end
