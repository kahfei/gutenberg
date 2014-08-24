class Changematprodcategorycode < ActiveRecord::Migration
  def change
  	rename_column :mat_prods, :matprod_category_code, :category_id
  end
end
