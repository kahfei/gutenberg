class AddCategoryCodeToCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :category_code, :string ,:limit => 3
  end
end
