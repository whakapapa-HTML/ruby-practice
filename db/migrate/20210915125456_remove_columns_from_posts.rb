class RemoveColumnsFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :denim_id, :integer
  end
end
