class RemoveColumnNumberOfAwardFromAwards < ActiveRecord::Migration[5.2]
  def change
    remove_column :awards, :number_of_award, :integer
  end
end
