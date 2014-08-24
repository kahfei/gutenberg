class CreateMatProds < ActiveRecord::Migration
  def change
    create_table :mat_prods do |t|
      t.string :matprod_category_code, :limit => 3
      t.string :matprod_sub_code, :limit => 3
      t.string :matprod_type, :limit => 2
      t.string :matprod_code, :limit => 25
      t.string :matprod_refcode, :limit => 50
      t.string :matprod_shortdesc, :limit => 50 
      t.text :matprod_remarks, :limit => 255
      t.string :matprod_status, :limit => 1
      t.decimal :matprod_cost_price, :precision => 8, :scale => 2, :limit => 10
      t.decimal :matprod_selling_price, :precision => 8, :scale => 2, :limit => 10
      t.string :matprod_uom, :limit => 5
      t.string :matprod_photo, :limit => 150
      t.string :matprod_cost_code, :limit => 20
      t.string :matprod_barcode, :limit => 100
      t.integer :updated_user_id, :limit => 11
      t.boolean :matprod_is_batch_serial
      t.boolean :matprod_is_batch_only
      t.decimal :matprod_est_weight_gram, :limit => 10
      t.decimal :matprod_size_mm, :limit => 10
      t.decimal :matprod_length_mm, :limit => 10
      t.decimal :matprod_thikness_mm, :limit => 10
      t.boolean :matprod_is_hollow
      t.boolean :matprod_is_solid
      t.boolean :matprod_is_melting_process
      t.boolean :matprod_is_weight_item

      t.timestamps
    end
  end
end
