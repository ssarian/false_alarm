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

ActiveRecord::Schema.define(version: 20161128171128) do

  create_table "account_owners", force: :cascade do |t|
    t.integer  "acctNum",    limit: 4
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "middleName", limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 2
    t.string   "zip",        limit: 255
    t.string   "homePhone",  limit: 255
    t.string   "workPhone",  limit: 255
    t.string   "cellphone",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "actions", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "alarms", force: :cascade do |t|
    t.integer  "permitNum",       limit: 4
    t.date     "beginDate"
    t.date     "endDate"
    t.date     "installDate"
    t.float    "amtDue",          limit: 24
    t.datetime "renewalDateTime"
    t.text     "note",            limit: 65535
    t.integer  "fkPropertyKey",   limit: 4
    t.integer  "fkAcctOwnerKey",  limit: 4
    t.integer  "fkStatusKey",     limit: 4
    t.integer  "fkUserKey",       limit: 4
    t.integer  "fkFaSiteTypeKey", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "citation_trans", force: :cascade do |t|
    t.datetime "transDateTime"
    t.integer  "fkCitationKey", limit: 4
    t.integer  "fkActionKey",   limit: 4
    t.integer  "fkTemplateKey", limit: 4
    t.integer  "fkUserKey",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "citations", force: :cascade do |t|
    t.integer  "citationNum",       limit: 4
    t.datetime "violationDateTime"
    t.integer  "violationNum",      limit: 4
    t.string   "alarmRegistered",   limit: 255
    t.integer  "fkAcctOwnerKey",    limit: 4
    t.integer  "fkStatusKey",       limit: 4
    t.integer  "fkCadAlarm",        limit: 4
    t.integer  "fkPropertyKey",     limit: 4
    t.integer  "fkAlarmKey",        limit: 4
    t.integer  "fkFaSiteTypeKey",   limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "fa_site_types", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.string   "siteCode",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incident_alarms", force: :cascade do |t|
    t.datetime "importDateTime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.integer  "incidentNum",      limit: 4
    t.datetime "incidentDateTime"
    t.integer  "permitNum",        limit: 4
    t.string   "address",          limit: 255
    t.string   "city",             limit: 255
    t.string   "state",            limit: 2
    t.string   "zip",              limit: 5
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "logins", force: :cascade do |t|
    t.datetime "loginDateTime"
    t.integer  "fkUserKey",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "pkNoticeKey", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float    "amount",          limit: 24
    t.datetime "paymentDateTime"
    t.string   "paymentType",     limit: 255
    t.integer  "fkActionKey",     limit: 4
    t.integer  "fkCitationkey",   limit: 4
    t.integer  "fkPropertyKey",   limit: 4
    t.integer  "fkAlarmKey",      limit: 4
    t.integer  "fkUserKey",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "permits", force: :cascade do |t|
    t.integer  "permitNum",       limit: 4
    t.string   "permitType",      limit: 255
    t.date     "permitStartDate"
    t.date     "permitExpDate"
    t.integer  "fkPropertyKey",   limit: 4
    t.integer  "fkAlarmKey",      limit: 4
    t.integer  "fkUserKey",       limit: 4
    t.integer  "fkPaymentKey",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "propertyName", limit: 255
    t.string   "address",      limit: 255
    t.string   "city",         limit: 255
    t.string   "state",        limit: 2
    t.string   "zip",          limit: 255
    t.integer  "fkAcctOwner",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "lastName",    limit: 255
    t.string   "firstName",   limit: 255
    t.string   "middleName",  limit: 255
    t.string   "username",    limit: 255
    t.string   "position",    limit: 255
    t.string   "address",     limit: 255
    t.string   "city",        limit: 255
    t.string   "state",       limit: 2
    t.string   "zip",         limit: 2
    t.string   "officePhone", limit: 255
    t.string   "officeExt",   limit: 255
    t.string   "cellPhone",   limit: 255
    t.string   "email",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
