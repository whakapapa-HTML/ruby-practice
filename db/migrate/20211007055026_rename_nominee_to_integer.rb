class RenameNomineeToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :nominee_maps, :nominee_id, :integer
  end
end
