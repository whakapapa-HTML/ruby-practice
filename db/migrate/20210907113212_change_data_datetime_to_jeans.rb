class ChangeDataDatetimeToJeans < ActiveRecord::Migration[5.2]
  def change
     change_column :jeans, :date_of_purchase, :date
  end
end
