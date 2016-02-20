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

ActiveRecord::Schema.define(version: 20160219151651) do

  create_table "adresses", force: :cascade do |t|
    t.string   "street",     limit: 255
    t.string   "district",   limit: 255
    t.integer  "number",     limit: 4
    t.string   "state",      limit: 255
    t.string   "city",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.string   "cpf",        limit: 255
    t.float    "salario",    limit: 24
    t.string   "RG",         limit: 255
    t.integer  "adress_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "clients", ["adress_id"], name: "index_clients_on_adress_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cnpj",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "branch",     limit: 255
    t.integer  "adress_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "companies", ["adress_id"], name: "index_companies_on_adress_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.float    "quantity",    limit: 24
    t.float    "price",       limit: 24
    t.integer  "supplier_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "sales", force: :cascade do |t|
    t.integer  "client_id",  limit: 4
    t.integer  "seller_id",  limit: 4
    t.integer  "product_id", limit: 4
    t.float    "total",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree
  add_index "sales", ["seller_id"], name: "index_sales_on_seller_id", using: :btree

  create_table "sellers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cpf",        limit: 255
    t.string   "salario",    limit: 255
    t.integer  "adress_id",  limit: 4
    t.integer  "company_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "sellers", ["adress_id"], name: "index_sellers_on_adress_id", using: :btree
  add_index "sellers", ["company_id"], name: "index_sellers_on_company_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cpnj",       limit: 255
    t.string   "phone",      limit: 255
    t.integer  "adress_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "suppliers", ["adress_id"], name: "index_suppliers_on_adress_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "name",                   limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "clients", "adresses"
  add_foreign_key "companies", "adresses"
  add_foreign_key "products", "suppliers"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "sellers"
  add_foreign_key "sellers", "adresses"
  add_foreign_key "sellers", "companies"
  add_foreign_key "suppliers", "adresses"
end
