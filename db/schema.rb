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

ActiveRecord::Schema.define(version: 20170711174734) do

  create_table "atributos_produtos", force: true do |t|
    t.integer  "produto_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "atributos_produtos", ["produto_id"], name: "index_atributos_produtos_on_produto_id", using: :btree

  create_table "billing_addresses", force: true do |t|
    t.string   "address"
    t.string   "number"
    t.string   "complement"
    t.string   "quarter"
    t.string   "reference"
    t.string   "city"
    t.string   "state"
    t.string   "country_id"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "document_number"
    t.string   "type"
    t.string   "gender"
    t.datetime "create_at"
    t.string   "email"
    t.datetime "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "login"
    t.string   "passwd"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "freights", force: true do |t|
    t.decimal  "actual_amount",      precision: 10, scale: 0
    t.string   "charged_amount"
    t.integer  "transit_time"
    t.integer  "cross_docking_time"
    t.string   "additional_info"
    t.string   "type"
    t.datetime "schedule_at"
    t.string   "schedule_period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lojas", force: true do |t|
    t.integer  "MarketPlace_id"
    t.string   "code"
    t.string   "name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lojas", ["MarketPlace_id"], name: "index_lojas_on_MarketPlace_id", using: :btree

  create_table "market_empresas", force: true do |t|
    t.integer  "marketPlace_id"
    t.integer  "empresa_id"
    t.string   "url"
    t.string   "user"
    t.string   "password"
    t.string   "token"
    t.integer  "intervaloEstoque"
    t.integer  "intervaloPedidos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "market_empresas", ["empresa_id"], name: "index_market_empresas_on_empresa_id", using: :btree
  add_index "market_empresas", ["marketPlace_id"], name: "index_market_empresas_on_marketPlace_id", using: :btree

  create_table "market_places", force: true do |t|
    t.string   "nome"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "order_site_id"
    t.string   "site"
    t.integer  "payment_type"
    t.datetime "purcharsed_at"
    t.datetime "updated_at"
    t.string   "status"
    t.decimal  "total_amount",          precision: 10, scale: 0
    t.decimal  "total_discount_amount", precision: 10, scale: 0
    t.integer  "customer_id"
    t.integer  "seller_id"
    t.integer  "billingAddress_id"
    t.integer  "shippingAddress_id"
    t.integer  "freight_id"
    t.datetime "created_at"
  end

  add_index "orders", ["billingAddress_id"], name: "index_orders_on_billingAddress_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["freight_id"], name: "index_orders_on_freight_id", using: :btree
  add_index "orders", ["seller_id"], name: "index_orders_on_seller_id", using: :btree
  add_index "orders", ["shippingAddress_id"], name: "index_orders_on_shippingAddress_id", using: :btree

  create_table "phones", force: true do |t|
    t.string   "type"
    t.string   "number"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["customer_id"], name: "index_phones_on_customer_id", using: :btree

  create_table "produto_market_places", force: true do |t|
    t.integer  "produto_id"
    t.integer  "marketEmpresa_id"
    t.decimal  "valorDe",          precision: 10, scale: 0
    t.decimal  "valorPor",         precision: 10, scale: 0
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produto_market_places", ["marketEmpresa_id"], name: "index_produto_market_places_on_marketEmpresa_id", using: :btree
  add_index "produto_market_places", ["produto_id"], name: "index_produto_market_places_on_produto_id", using: :btree

  create_table "produtos", force: true do |t|
    t.integer  "empresa_id"
    t.text     "descricao"
    t.float    "valor",             limit: 24
    t.integer  "saldo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem1"
    t.string   "imagem2"
    t.string   "imagem3"
    t.string   "imagem4"
    t.string   "video1"
    t.string   "video2"
    t.string   "sku_seller_id"
    t.string   "product_seller_id"
    t.string   "title"
    t.string   "brand"
    t.string   "gtin"
    t.string   "categories"
    t.string   "weight"
    t.string   "length"
    t.string   "width"
    t.string   "height"
    t.decimal  "valorOferta",                  precision: 10, scale: 0
  end

  add_index "produtos", ["empresa_id"], name: "index_produtos_on_empresa_id", using: :btree

  create_table "shipping_addresses", force: true do |t|
    t.string   "address"
    t.string   "number"
    t.string   "complement"
    t.string   "quarter"
    t.string   "reference"
    t.string   "city"
    t.string   "state"
    t.string   "country_id"
    t.string   "zip_code"
    t.string   "recipient_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_empresas", force: true do |t|
    t.integer  "user_id"
    t.integer  "empresa_id"
    t.datetime "dtCriacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_empresas", ["empresa_id"], name: "index_users_empresas_on_empresa_id", using: :btree
  add_index "users_empresas", ["user_id"], name: "index_users_empresas_on_user_id", using: :btree

end
