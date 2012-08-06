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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120806194342) do

  create_table "lakes", :force => true do |t|
    t.string   "content"
    t.string   "name"
    t.integer  "lake_id"
    t.string   "lake_zipcode"
    t.string   "slug"
    t.string   "lake_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "lakes", ["slug"], :name => "index_lakes_on_slug", :unique => true

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "lake_id"
    t.string   "lake_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "zipcode"
    t.string   "provider"
    t.string   "uid"
    t.string   "attach"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",               :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
