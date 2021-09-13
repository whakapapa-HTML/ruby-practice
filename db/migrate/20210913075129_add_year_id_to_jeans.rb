class AddYearIdToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :year_id, :integer
  end
end
