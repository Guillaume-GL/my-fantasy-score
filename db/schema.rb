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

ActiveRecord::Schema.define(version: 2020_12_17_154324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "goal_team_home_real"
    t.integer "goal_team_away_real"
    t.string "match_group_name_and_day"
    t.bigint "competition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "team_away_id"
    t.bigint "team_home_id"
    t.index ["competition_id"], name: "index_games_on_competition_id"
    t.index ["team_away_id"], name: "index_games_on_team_away_id"
    t.index ["team_home_id"], name: "index_games_on_team_home_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.text "gain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "pronostic_id", null: false
    t.index ["pronostic_id"], name: "index_leagues_on_pronostic_id"
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

  create_table "pronostics", force: :cascade do |t|
    t.integer "goal_team_home_prono"
    t.integer "goal_team_away_prono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_pronostics_on_game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "teams", column: "team_away_id"
  add_foreign_key "games", "teams", column: "team_home_id"
  add_foreign_key "leagues", "pronostics"
  add_foreign_key "pronostics", "games"
end
