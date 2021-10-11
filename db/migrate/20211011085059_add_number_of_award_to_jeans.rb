class AddNumberOfAwardToJeans < ActiveRecord::Migration[5.2]
  def change
    add_column :jeans, :number_of_award, :integer
  end
end
