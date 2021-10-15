class RemoveJeansIdFromAwardMap < ActiveRecord::Migration[5.2]
  def change
    remove_column :award_maps, :name, :string
  end
end
