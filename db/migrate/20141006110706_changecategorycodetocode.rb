class Changecategorycodetocode < ActiveRecord::Migration
  def change
  	rename_column :categories, :category_code, :code
  end
end
