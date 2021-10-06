class RenamePostIdColumnToNomineeMaps < ActiveRecord::Migration[5.2]
  def change
    rename_column :nominee_maps, :post_id, :jeans_id
  end
end
