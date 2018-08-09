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

ActiveRecord::Schema.define(version: 2018_08_09_185543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "case_attributes", force: :cascade do |t|
    t.bigint "case_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_case_attributes_on_case_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "status", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status"], name: "index_cases_on_status"
    t.index ["user_id"], name: "index_cases_on_user_id"
  end

  create_table "law_categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "lawable_type"
    t.bigint "lawable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lawable_type", "lawable_id"], name: "index_law_categories_on_lawable_type_and_lawable_id"
    t.index ["name"], name: "index_law_categories_on_name"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_attributes", force: :cascade do |t|
    t.string "occupation", null: false
    t.integer "cases_accepted", default: 0
    t.decimal "average_rating", default: "0.0"
    t.boolean "hirable"
    t.string "city", null: false
    t.string "state", null: false
    t.string "firm"
    t.integer "years_active", null: false
    t.string "excerpt"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["average_rating"], name: "index_user_attributes_on_average_rating"
    t.index ["cases_accepted"], name: "index_user_attributes_on_cases_accepted"
    t.index ["occupation"], name: "index_user_attributes_on_occupation"
    t.index ["user_id"], name: "index_user_attributes_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName", null: false
    t.string "lastName", null: false
    t.date "dob", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
