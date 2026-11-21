class RemoveCreatedAtFromCategories < ActiveRecord::Migration[8.1]
  def change
    remove_column :categories, :created_at, :datetime
  end
end
