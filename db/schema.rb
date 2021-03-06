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

ActiveRecord::Schema.define(version: 20150731153655) do

  create_table "events", id: false, force: :cascade do |t|
    t.string   "id"
    t.string   "activity",                 null: false
    t.datetime "datetime",                 null: false
    t.string   "location",                 null: false
    t.string   "description", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "host",                     null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "feedback_type", null: false
    t.string   "details",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "event_id",   null: false
    t.integer  "user_id",    null: false
    t.string   "message",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "event_id",                               null: false
    t.integer  "target",                                 null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "suggested_activity",     default: ""
    t.datetime "suggested_datetime"
    t.string   "suggested_location",     default: ""
    t.boolean  "has_responded",          default: false, null: false
    t.boolean  "has_accepted",           default: false, null: false
    t.boolean  "has_suggested_activity", default: false, null: false
    t.boolean  "has_suggested_datetime", default: false, null: false
    t.boolean  "has_suggested_location", default: false, null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "fullname"
    t.string   "username",                               null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false, null: false
    t.string   "auth_token",             default: "",    null: false
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
