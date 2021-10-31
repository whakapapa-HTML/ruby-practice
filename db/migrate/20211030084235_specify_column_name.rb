class SpecifyColumnName < ActiveRecord::Migration[5.2]
  def change
    change_column :nominees, :name
  end
end
