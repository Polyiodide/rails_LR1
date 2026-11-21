class RemoveCreatedAtFromAuthors < ActiveRecord::Migration[8.1]
  def change
    remove_column :authors, :created_at, :datetime
  end
end
