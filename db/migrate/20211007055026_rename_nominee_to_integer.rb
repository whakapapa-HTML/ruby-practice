class RenameNomineeToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :nominee_maps, :nominee_id, 'integer USING CAST(nominee_id AS integer)'
  end
end
