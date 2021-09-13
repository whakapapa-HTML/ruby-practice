class RemoveDateOfBirthFromLots < ActiveRecord::Migration[5.2]
  def change
    remove_column :lots, :date_of_birth, :string
  end
end
