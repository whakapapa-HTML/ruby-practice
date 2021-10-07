class RenameNomineeIdToInteger < ActiveRecord::Migration[5.2]
  def change
    change_coloumn :nominee_maps, :nominee_id, :integer
  end

  def change
    add_column :nominee_maps, :user_id, :integer
  end
end
