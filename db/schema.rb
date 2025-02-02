# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_26_001720) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.integer "merchant_id", null: false
    t.integer "qty"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id", null: false
    t.index ["merchant_id"], name: "index_carts_on_merchant_id"
    t.index ["product_id"], name: "index_carts_on_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idproofs", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.string "status"
    t.integer "merchant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "index_idproofs_on_merchant_id"
  end

  create_table "itemcarts", force: :cascade do |t|
    t.integer "qnty"
    t.string "size"
    t.integer "product_id", null: false
    t.integer "merchant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "index_itemcarts_on_merchant_id"
    t.index ["product_id"], name: "index_itemcarts_on_product_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_merchants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_merchants_on_reset_password_token", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.integer "merchant_id", null: false
    t.integer "product_id", null: false
    t.integer "itemcart_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itemcart_id"], name: "index_orders_on_itemcart_id"
    t.index ["merchant_id"], name: "index_orders_on_merchant_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "productimages", force: :cascade do |t|
    t.string "image"
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_productimages_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "status"
    t.integer "categorie_id", null: false
    t.string "image"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "merchant_id", null: false
    t.index ["categorie_id"], name: "index_products_on_categorie_id"
    t.index ["merchant_id"], name: "index_products_on_merchant_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "merchant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "index_wishlists_on_merchant_id"
    t.index ["product_id"], name: "index_wishlists_on_product_id"
  end

  add_foreign_key "carts", "merchants"
  add_foreign_key "carts", "products"
  add_foreign_key "idproofs", "merchants"
  add_foreign_key "itemcarts", "merchants"
  add_foreign_key "itemcarts", "products"
  add_foreign_key "orders", "itemcarts"
  add_foreign_key "orders", "merchants"
  add_foreign_key "orders", "products"
  add_foreign_key "productimages", "products"
  add_foreign_key "products", "categories", column: "categorie_id"
  add_foreign_key "products", "merchants"
  add_foreign_key "wishlists", "merchants"
  add_foreign_key "wishlists", "products"
end
