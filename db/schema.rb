# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_12_025909) do

  create_table "addresses", force: :cascade do |t|
    t.string "line_one"
    t.string "line_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_addresses_on_player_id"
  end

  create_table "club_teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "high_school_teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.decimal "height"
    t.decimal "weight"
    t.date "birthday"
    t.integer "high_school_team_id"
    t.integer "club_team_id"
    t.string "email"
    t.string "phone_number"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["club_team_id"], name: "index_players_on_club_team_id"
    t.index ["high_school_team_id"], name: "index_players_on_high_school_team_id"
  end

  add_foreign_key "addresses", "players"
  add_foreign_key "players", "club_teams"
  add_foreign_key "players", "high_school_teams"
end
