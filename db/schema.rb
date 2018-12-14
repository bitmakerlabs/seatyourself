ActiveRecord::Schema.define(version: 2018_12_14_010606) do

  create_table "menu_items", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "dish"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.datetime "time"
    t.integer "party_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "open_from"
    t.datetime "open_until"
    t.integer "capacity"
    t.integer "max_reservation_size"
    t.integer "price_range"
    t.text "summary"
    t.integer "user_id"
    t.string "address"
    t.string "neighbourhood"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "loyalty_points"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
