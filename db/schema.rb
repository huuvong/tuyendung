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

ActiveRecord::Schema.define(version: 20180425230524) do

  create_table "congties", force: :cascade do |t|
    t.string "tencongty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diadiems", force: :cascade do |t|
    t.string "tendiadiem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thongtincanhans", force: :cascade do |t|
    t.integer "thongtincongviec_id"
    t.string "hovaten"
    t.string "sodienthoai"
    t.string "email"
    t.integer "vitricongviec_id"
    t.string "filedinhkem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thongtincongviecs", force: :cascade do |t|
    t.string "tencongviec"
    t.integer "congty_id"
    t.integer "vitricongviec_id"
    t.integer "diadiem_id"
    t.string "sohoso"
    t.string "mavitri"
    t.date "thoihannophoso"
    t.string "thongtinvitri"
    t.string "mota"
    t.string "yeucau"
    t.string "chedoluong"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitricongviecs", force: :cascade do |t|
    t.string "tenvitri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
