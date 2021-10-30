class SpecifyColumnName < ActiveRecord::Migration[5.2]
  def up
    change_column :nominees, :name, :integer, using: "name::integer"
  end

  def down
    change_column :nominees, :name, :integer
  end
end
