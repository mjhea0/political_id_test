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

ActiveRecord::Schema.define(:version => 20130128040515) do

  create_table "questions", :force => true do |t|
    t.integer  "q_type"
    t.boolean  "orientation"
    t.text     "text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "responses", :force => true do |t|
    t.integer  "answer"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "results", :force => true do |t|
    t.integer  "economic_score"
    t.integer  "social_score"
    t.integer  "foreign_p_score"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "user_id"
    t.integer  "economic_response_count"
    t.integer  "social_response_count"
    t.integer  "foreign_p_response_count"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "fb_id"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "pic_url"
  end

end
