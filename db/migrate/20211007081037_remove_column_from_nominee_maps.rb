class RemoveColumnFromNomineeMaps < ActiveRecord::Migration[5.2]
  def change
    remove_column :nominee_maps, :user_id, :integer
  end
end
