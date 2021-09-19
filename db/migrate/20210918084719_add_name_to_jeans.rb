class AddNameToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :name, :string
  end
end
