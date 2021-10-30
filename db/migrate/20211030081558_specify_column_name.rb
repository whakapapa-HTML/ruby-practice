class SpecifyColumnName < ActiveRecord::Migration[5.2]
  def change
     change_column :nominees, :name, :integer, using: "name::integer", comment: "ノミネート名"
  end
end
