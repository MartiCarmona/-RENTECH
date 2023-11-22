class RemoveCategoriesFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :categories, :string
  end
end
