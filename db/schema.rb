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

ActiveRecord::Schema.define(version: 2021_06_28_084436) do

  create_table "game_metrics", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "result", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "points", default: 0
    t.index ["game_id"], name: "index_game_metrics_on_game_id"
    t.index ["user_id"], name: "index_game_metrics_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "player_one_id"
    t.integer "player_two_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_one_id"], name: "index_games_on_player_one_id"
    t.index ["player_two_id"], name: "index_games_on_player_two_id"
  end

  create_table "leader_boards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "score", default: 0
    t.integer "total_games", default: 0
    t.integer "win", default: 0
    t.integer "loss", default: 0
    t.integer "stale", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_leader_boards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.string "phone_number", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true
  end

  add_foreign_key "game_metrics", "games"
  add_foreign_key "game_metrics", "users"
  add_foreign_key "games", "users", column: "player_one_id"
  add_foreign_key "games", "users", column: "player_two_id"
end
