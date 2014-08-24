json.array!(@mat_prods) do |mat_prod|
  json.extract! mat_prod, :id, :matprod_category_code, :matprod_sub_code, :matprod_type, :matprod_code, :matprod_refcode, :matprod_shortdesc, :matprod_remarks, :matprod_status, :matprod_cost_price, :matprod_selling_price, :matprod_uom, :matprod_photo, :matprod_cost_code, :matprod_barcode, :updated_user_id, :matprod_is_batch_serial, :matprod_is_batch_only, :matprod_est_weight_gram, :matprod_size_mm, :matprod_length_mm, :matprod_thikness_mm, :matprod_is_hollow, :matprod_is_solid, :matprod_is_melting_process, :matprod_is_weight_item
  json.url mat_prod_url(mat_prod, format: :json)
end
