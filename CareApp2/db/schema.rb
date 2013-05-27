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

ActiveRecord::Schema.define(:version => 20130527194918) do

  create_table "cases", :force => true do |t|
    t.integer "case_id"
    t.integer "user_id"
    t.integer "condition_id"
  end

  create_table "conditions", :force => true do |t|
    t.integer "condition_id"
    t.string  "condition_name"
    t.string  "resource"
  end

  create_table "engagements", :force => true do |t|
    t.integer "case_id"
    t.integer "user_id"
    t.integer "condition_id"
  end

  create_table "notes", :force => true do |t|
    t.integer "note_id"
    t.integer "case_id"
    t.text    "note"
  end

  create_table "users", :force => true do |t|
    t.integer "user_id"
    t.string  "user_type"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "password_digest"
  end

end
