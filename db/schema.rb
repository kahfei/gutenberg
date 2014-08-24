# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140824163335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.integer  "updated_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mat_prods", force: true do |t|
    t.string   "category_id",                limit: 3
    t.string   "matprod_sub_code",           limit: 3
    t.string   "matprod_type",               limit: 2
    t.string   "matprod_code",               limit: 25
    t.string   "matprod_refcode",            limit: 50
    t.string   "matprod_shortdesc",          limit: 50
    t.text     "matprod_remarks"
    t.string   "matprod_status",             limit: 1
    t.decimal  "matprod_cost_price",                     precision: 8, scale: 2
    t.decimal  "matprod_selling_price",                  precision: 8, scale: 2
    t.string   "matprod_uom",                limit: 5
    t.string   "matprod_photo",              limit: 150
    t.string   "matprod_cost_code",          limit: 20
    t.string   "matprod_barcode",            limit: 100
    t.integer  "updated_user_id"
    t.boolean  "matprod_is_batch_serial"
    t.boolean  "matprod_is_batch_only"
    t.decimal  "matprod_est_weight_gram"
    t.decimal  "matprod_size_mm"
    t.decimal  "matprod_length_mm"
    t.decimal  "matprod_thikness_mm"
    t.boolean  "matprod_is_hollow"
    t.boolean  "matprod_is_solid"
    t.boolean  "matprod_is_melting_process"
    t.boolean  "matprod_is_weight_item"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
