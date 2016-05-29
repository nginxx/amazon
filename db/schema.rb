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

ActiveRecord::Schema.define(version: 20160527074149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string  "address"
    t.string  "zip_code"
    t.string  "city"
    t.string  "phone"
    t.string  "country"
    t.integer "country_id"
    t.index ["country_id"], name: "index_addresses_on_country_id", using: :btree
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text   "biography"
  end

  create_table "books", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.decimal "price",       precision: 5, scale: 2
    t.integer "in_stock"
    t.integer "author_id"
    t.integer "category_id"
    t.index ["author_id"], name: "index_books_on_author_id", using: :btree
    t.index ["category_id"], name: "index_books_on_category_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string  "number"
    t.integer "cvv"
    t.integer "expiration_month"
    t.integer "expiration_year"
    t.string  "first_name"
    t.string  "last_name"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.decimal "price",    precision: 5, scale: 2
    t.integer "book_id"
    t.integer "order_id"
    t.index ["book_id"], name: "index_order_items_on_book_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "total_price",         precision: 7, scale: 2
    t.string   "state",                                       default: "in progress"
    t.datetime "completed_date"
    t.integer  "customer_id"
    t.integer  "credit_card_id"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.index ["billing_address_id"], name: "index_orders_on_billing_address_id", using: :btree
    t.index ["credit_card_id"], name: "index_orders_on_credit_card_id", using: :btree
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["shipping_address_id"], name: "index_orders_on_shipping_address_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.text    "review"
    t.integer "rating_scale"
    t.integer "customer_id"
    t.integer "book_id"
    t.index ["book_id"], name: "index_ratings_on_book_id", using: :btree
    t.index ["customer_id"], name: "index_ratings_on_customer_id", using: :btree
  end

end
