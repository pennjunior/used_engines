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

ActiveRecord::Schema[7.1].define(version: 2025_07_17_142728) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "boat_engines", force: :cascade do |t|
    t.integer "power"
    t.string "engine_type"
    t.string "hull_material"
    t.string "manufacturer"
    t.integer "year"
    t.decimal "price"
    t.string "condition"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_engines", force: :cascade do |t|
    t.integer "horsepower"
    t.string "fuel_type"
    t.string "transmission"
    t.integer "mileage"
    t.string "manufacturer"
    t.string "year"
    t.decimal "price"
    t.string "condition"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_orders", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "location"
    t.integer "quantity"
    t.string "extra_info"
    t.index ["car_id"], name: "index_car_orders_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "category"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.decimal "price"
    t.string "engine_type"
    t.string "fuel_type"
    t.integer "engine_size"
    t.integer "seats"
    t.integer "doors"
    t.string "transmission"
    t.string "drivetrain"
    t.string "registration_year"
    t.string "dimension"
    t.string "chassis_no"
    t.string "engine_code"
    t.string "steering"
    t.string "ext_color"
    t.string "location"
    t.integer "weight"
    t.string "version_class"
    t.string "max_capacity"
    t.text "description"
    t.string "condition"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_cars_on_slug", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "engine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["engine_id"], name: "index_cart_items_on_engine_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "engine_orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "location"
    t.integer "quantity"
    t.decimal "total_price"
    t.bigint "engine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "extra_info"
    t.index ["engine_id"], name: "index_engine_orders_on_engine_id"
  end

  create_table "engines", force: :cascade do |t|
    t.string "engineable_type", null: false
    t.bigint "engineable_id", null: false
    t.decimal "price"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["engineable_type", "engineable_id"], name: "index_engines_on_engineable"
    t.index ["slug"], name: "index_engines_on_slug", unique: true
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "engine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.bigint "cart_id", null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["engine_id"], name: "index_line_items_on_engine_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "total"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stripe_session_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.date "review_date"
  end

  create_table "saved_cars", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_saved_cars_on_car_id"
    t.index ["user_id"], name: "index_saved_cars_on_user_id"
  end

  create_table "saved_engines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "engine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_saved_engines_on_engine_id"
    t.index ["user_id"], name: "index_saved_engines_on_user_id"
  end

  create_table "truck_engines", force: :cascade do |t|
    t.integer "towing_capacity"
    t.string "engine_type"
    t.string "fuel_type"
    t.integer "mileage"
    t.string "manufacturer"
    t.string "year"
    t.decimal "price"
    t.string "condition"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "car_orders", "cars"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "engines"
  add_foreign_key "carts", "users"
  add_foreign_key "engine_orders", "engines"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "engines"
  add_foreign_key "saved_cars", "cars"
  add_foreign_key "saved_cars", "users"
  add_foreign_key "saved_engines", "engines"
  add_foreign_key "saved_engines", "users"
end
