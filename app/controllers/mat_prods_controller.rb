class MatProdsController < ApplicationController
  before_action :set_mat_prod, only: [:show, :edit, :update, :destroy]

  # GET /mat_prods
  # GET /mat_prods.json
  def index
    @mat_prods = MatProd.all
  end

  # GET /mat_prods/1
  # GET /mat_prods/1.json
  def show
  end

  # GET /mat_prods/new
  def new
    @mat_prod = MatProd.new
    @categories = Category.all
  end

  # GET /mat_prods/1/edit
  def edit
    @categories = Category.all
  end

  # POST /mat_prods
  # POST /mat_prods.json
  def create
    @mat_prod = MatProd.new(mat_prod_params)
    @categories = Category.all

    respond_to do |format|
      if @mat_prod.save
        format.html { redirect_to @mat_prod, notice: 'Mat prod was successfully created.' }
        format.json { render :show, status: :created, location: @mat_prod }
      else
        format.html { render :new }
        format.json { render json: @mat_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mat_prods/1
  # PATCH/PUT /mat_prods/1.json
  def update
    respond_to do |format|
      if @mat_prod.update(mat_prod_params)
        format.html { redirect_to @mat_prod, notice: 'Mat prod was successfully updated.' }
        format.json { render :show, status: :ok, location: @mat_prod }
      else
        format.html { render :edit }
        format.json { render json: @mat_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mat_prods/1
  # DELETE /mat_prods/1.json
  def destroy
    @mat_prod.destroy
    respond_to do |format|
      format.html { redirect_to mat_prods_url, notice: 'Mat prod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mat_prod
      @mat_prod = MatProd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mat_prod_params
      params.require(:mat_prod).permit(:category_id, :matprod_sub_code, :matprod_type, :matprod_code, :matprod_refcode, :matprod_shortdesc, :matprod_remarks, :matprod_status, :matprod_cost_price, :matprod_selling_price, :matprod_uom, :matprod_photo, :matprod_cost_code, :matprod_barcode, :updated_user_id, :matprod_is_batch_serial, :matprod_is_batch_only, :matprod_est_weight_gram, :matprod_size_mm, :matprod_length_mm, :matprod_thikness_mm, :matprod_is_hollow, :matprod_is_solid, :matprod_is_melting_process, :matprod_is_weight_item)
    end
end
