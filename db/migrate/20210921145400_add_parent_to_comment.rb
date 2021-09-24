class AddParentToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :parent, foreign_key: { to_table: :comments }
    remove_column :comments, :reply_comments, :integer
  end

end
