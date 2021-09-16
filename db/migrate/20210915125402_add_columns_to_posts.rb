class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :jeans_id, :integer
  end
end
