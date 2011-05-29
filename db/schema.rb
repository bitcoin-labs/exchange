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

ActiveRecord::Schema.define(:version => 20110529045413) do

  create_table "options", :force => true do |t|
    t.string   "user_ID"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "creationTime"
    t.integer  "spotPrice"
    t.integer  "type"
    t.integer  "numberCoin"
    t.integer  "buyerID"
    t.datetime "purchaseTime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "amount"
    t.integer  "price"
    t.string   "type"
    t.integer  "amount_remain"
    t.integer  "user_id"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "user_transaction_types", :force => true do |t|
    t.boolean  "asActive"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_transactions", :force => true do |t|
    t.integer  "user_transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.text     "token"
    t.text     "email"
    t.text     "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["token"], :name => "index_users_on_token", :unique => true

end
