class RemoveUpdatedAtFromAuthors < ActiveRecord::Migration[8.1]
  def change
    remove_column :authors, :updated_at, :datetime
  end
end
