class ChangeNameTypeNominee < ActiveRecord::Migration[5.2]
  def change
    change_column :nominees, :name, 'integer USING CAST(name AS integer)'
  end
end
