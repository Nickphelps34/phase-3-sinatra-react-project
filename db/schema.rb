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

ActiveRecord::Schema.define(version: 2022_12_06_143923) do

  create_table "critics", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.boolean "celebrity"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "michelin_stars"
    t.string "location"
    t.string "cuisine"
    t.boolean "health_hazards"
  end
  
  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.integer "restaurant_id"
    t.integer "critic_id"
    t.string "date_published"
    t.integer "likes"
  end

end
