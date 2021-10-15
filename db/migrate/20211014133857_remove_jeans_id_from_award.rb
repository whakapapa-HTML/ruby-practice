class RemoveJeansIdFromAward < ActiveRecord::Migration[5.2]
  def change
    remove_column :awards, :jeans_id, :integer
  end
end
