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

ActiveRecord::Schema.define(version: 20180122030354) do

  create_table "comments", force: :cascade do |t|
    t.integer "comment_id"
    t.string "body"
    t.date "date_comment"
    t.integer "Post_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Post_id"], name: "index_comments_on_Post_id"
    t.index ["User_id"], name: "index_comments_on_User_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer "group_id"
    t.string "name"
    t.string "private"
    t.date "created_date"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_groups_on_User_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "post_id"
    t.string "body"
    t.date "date_post"
    t.string "image"
    t.integer "User_id"
    t.integer "Group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Group_id"], name: "index_posts_on_Group_id"
    t.index ["User_id"], name: "index_posts_on_User_id"
  end

  create_table "students_courses", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_students_courses_on_course_id"
    t.index ["user_id"], name: "index_students_courses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "name_public"
    t.string "login"
    t.string "password"
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "address"
    t.integer "phone_nr"
    t.date "joined_date"
    t.date "last_visit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
  end

  create_table "users_groups", force: :cascade do |t|
  end

end
