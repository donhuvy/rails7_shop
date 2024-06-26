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

ActiveRecord::Schema[7.1].define(version: 2024_05_08_104243) do
  create_table "appusers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_appusers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_appusers_on_reset_password_token", unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.string "company_name"
    t.integer "start_year"
    t.integer "end_year"
    t.string "origin_country"
    t.string "domestic_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "contact_number"
    t.text "address"
    t.string "pincode"
    t.string "city"
    t.string "state"
    t.date "date_of_birth"
    t.date "date_of_hiring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.boolean "product_type"
    t.decimal "size_width"
    t.decimal "size_height"
    t.decimal "size_length"
    t.string "unit_of_size"
    t.date "manufactured_date"
    t.date "experied_date"
    t.integer "brand_id"
    t.string "color"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
