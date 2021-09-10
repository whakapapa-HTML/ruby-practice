class AddColumnLots < ActiveRecord::Migration[5.2]
  def change
    add_column :lots, :brand_id, :integer
  end
end
