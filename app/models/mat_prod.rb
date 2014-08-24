class MatProd < ActiveRecord::Base
	validates :matprod_category_code, presence: true
    validates :matprod_sub_code, presence: true
    validates :matprod_type, presence: true
    validates :matprod_code, presence: true
    validates :matprod_shortdesc, presence: true
    validates :matprod_remarks, presence: true
    validates :matprod_status, presence: true
    validates :matprod_cost_price, presence: true
    validates :matprod_selling_price, presence: true
    validates :matprod_uom, presence: true
    validates :matprod_photo, presence: true
    validates :matprod_cost_code, presence: true
    validates :updated_user_id, presence: true
    validates :matprod_est_weight_gram, presence: true
    validates :matprod_size_mm, presence: true
    validates :matprod_length_mm, presence: true
    validates :matprod_thikness_mm, presence: true

    belongs_to :category
end
