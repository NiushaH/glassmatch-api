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

ActiveRecord::Schema[7.0].define(version: 2022_10_16_210002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "frames", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.string "condition"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rx_id"
  end

  create_table "rxes", force: :cascade do |t|
    t.float "OD_SPH"
    t.float "OD_CYL"
    t.integer "OD_AXIS"
    t.float "OD_PRISM"
    t.string "OD_BASE"
    t.float "OD_ADD"
    t.float "OS_SPHERE"
    t.float "OS_CYL"
    t.integer "OS_AXIS"
    t.float "OS_PRISM"
    t.string "OS_BASE"
    t.float "OS_ADD"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "frame_id"
  end

  add_foreign_key "frames", "rxes"
  add_foreign_key "rxes", "frames"
end