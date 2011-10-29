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

ActiveRecord::Schema.define(:version => 20111029060758) do

  create_table "hasta_bilgileris", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "dateOfBirth"
    t.text     "diagnosis"
    t.string   "operationDate"
    t.string   "hospitalName"
    t.string   "organization"
    t.string   "webSite"
    t.string   "telephone"
    t.text     "adress"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zipCode"
    t.string   "docSubject"
    t.string   "docLink"
    t.text     "aditionalInfo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submits", :force => true do |t|
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "name"
    t.string   "surname"
    t.string   "organization"
    t.text     "adress"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zipcode"
    t.string   "mainEMail"
    t.string   "secEMail"
    t.string   "dayTimePhone"
    t.string   "nightTimePhone"
    t.string   "mobilePhone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "welcomes", :force => true do |t|
    t.string   "serviceType"
    t.string   "departureCity"
    t.string   "departureCountry"
    t.string   "arrivalCity"
    t.string   "arrivalCountry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
