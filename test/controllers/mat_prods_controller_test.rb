require 'test_helper'

class MatProdsControllerTest < ActionController::TestCase
  setup do
    @mat_prod = mat_prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mat_prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mat_prod" do
    assert_difference('MatProd.count') do
      post :create, mat_prod: { matprod_barcode: @mat_prod.matprod_barcode, matprod_category_code: @mat_prod.matprod_category_code, matprod_code: @mat_prod.matprod_code, matprod_cost_code: @mat_prod.matprod_cost_code, matprod_cost_price: @mat_prod.matprod_cost_price, matprod_est_weight_gram: @mat_prod.matprod_est_weight_gram, matprod_is_batch_only: @mat_prod.matprod_is_batch_only, matprod_is_batch_serial: @mat_prod.matprod_is_batch_serial, matprod_is_hollow: @mat_prod.matprod_is_hollow, matprod_is_melting_process: @mat_prod.matprod_is_melting_process, matprod_is_solid: @mat_prod.matprod_is_solid, matprod_is_weight_item: @mat_prod.matprod_is_weight_item, matprod_length_mm: @mat_prod.matprod_length_mm, matprod_photo: @mat_prod.matprod_photo, matprod_refcode: @mat_prod.matprod_refcode, matprod_remarks: @mat_prod.matprod_remarks, matprod_selling_price: @mat_prod.matprod_selling_price, matprod_shortdesc: @mat_prod.matprod_shortdesc, matprod_size_mm: @mat_prod.matprod_size_mm, matprod_status: @mat_prod.matprod_status, matprod_sub_code: @mat_prod.matprod_sub_code, matprod_thikness_mm: @mat_prod.matprod_thikness_mm, matprod_type: @mat_prod.matprod_type, matprod_uom: @mat_prod.matprod_uom, updated_user_id: @mat_prod.updated_user_id }
    end

    assert_redirected_to mat_prod_path(assigns(:mat_prod))
  end

  test "should show mat_prod" do
    get :show, id: @mat_prod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mat_prod
    assert_response :success
  end

  test "should update mat_prod" do
    patch :update, id: @mat_prod, mat_prod: { matprod_barcode: @mat_prod.matprod_barcode, matprod_category_code: @mat_prod.matprod_category_code, matprod_code: @mat_prod.matprod_code, matprod_cost_code: @mat_prod.matprod_cost_code, matprod_cost_price: @mat_prod.matprod_cost_price, matprod_est_weight_gram: @mat_prod.matprod_est_weight_gram, matprod_is_batch_only: @mat_prod.matprod_is_batch_only, matprod_is_batch_serial: @mat_prod.matprod_is_batch_serial, matprod_is_hollow: @mat_prod.matprod_is_hollow, matprod_is_melting_process: @mat_prod.matprod_is_melting_process, matprod_is_solid: @mat_prod.matprod_is_solid, matprod_is_weight_item: @mat_prod.matprod_is_weight_item, matprod_length_mm: @mat_prod.matprod_length_mm, matprod_photo: @mat_prod.matprod_photo, matprod_refcode: @mat_prod.matprod_refcode, matprod_remarks: @mat_prod.matprod_remarks, matprod_selling_price: @mat_prod.matprod_selling_price, matprod_shortdesc: @mat_prod.matprod_shortdesc, matprod_size_mm: @mat_prod.matprod_size_mm, matprod_status: @mat_prod.matprod_status, matprod_sub_code: @mat_prod.matprod_sub_code, matprod_thikness_mm: @mat_prod.matprod_thikness_mm, matprod_type: @mat_prod.matprod_type, matprod_uom: @mat_prod.matprod_uom, updated_user_id: @mat_prod.updated_user_id }
    assert_redirected_to mat_prod_path(assigns(:mat_prod))
  end

  test "should destroy mat_prod" do
    assert_difference('MatProd.count', -1) do
      delete :destroy, id: @mat_prod
    end

    assert_redirected_to mat_prods_path
  end
end
