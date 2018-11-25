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

ActiveRecord::Schema.define(version: 20181125100629) do

  create_table "cars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.float "base_price", limit: 24
    t.float "battery_capacity", limit: 24
    t.float "range", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand"
    t.float "dc_charging", limit: 24
    t.float "ac_charging", limit: 24
    t.integer "plug_type"
    t.integer "consumption"
    t.integer "rental_battery"
    t.float "top_speed", limit: 24
    t.float "continuous_speed", limit: 24
    t.float "acceleration", limit: 24
    t.integer "seats"
    t.float "frunk_space", limit: 24
    t.float "trunk_space", limit: 24
    t.float "frunk_space_big", limit: 24
    t.float "weight", limit: 24
    t.float "battery_voltage", limit: 24
    t.boolean "camper_mode"
    t.float "interiour_sounds", limit: 24
    t.float "exteriour_sounds", limit: 24
    t.integer "drive_axle"
    t.integer "max_power"
    t.integer "max_regen"
    t.integer "battery_temp_control"
    t.integer "battery_cell_type"
    t.integer "battery_chemistry"
    t.integer "motor_type"
    t.integer "charging_network"
    t.integer "towing_capacity"
    t.integer "app_access"
  end

end
