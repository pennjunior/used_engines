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

ActiveRecord::Schema[7.1].define(version: 2024_12_26_235931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer "year"
    t.decimal "price"
    t.string "condition"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engines", force: :cascade do |t|
    t.string "engineable_type", null: false
    t.bigint "engineable_id", null: false
    t.decimal "price"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineable_type", "engineable_id"], name: "index_engines_on_engineable"
  end

  create_table "truck_engines", force: :cascade do |t|
    t.integer "towing_capacity"
    t.string "engine_type"
    t.string "fuel_type"
    t.integer "mileage"
    t.string "manufacturer"
    t.integer "year"
    t.decimal "price"
    t.string "condition"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
