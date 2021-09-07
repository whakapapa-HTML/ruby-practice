class AddColumnToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :jeans_image, :string
  end
end
