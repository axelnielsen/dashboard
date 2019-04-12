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

ActiveRecord::Schema.define(version: 20190404001928) do

  create_table "athletes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "names"
    t.string "surnames"
    t.string "sex"
    t.date "birthdate"
    t.integer "birthyear"
    t.string "rut"
    t.integer "idClub"
    t.integer "idRegion"
    t.string "cellPhone"
    t.string "mail"
    t.integer "idCoach"
    t.string "size"
    t.string "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sex_id"
    t.bigint "region_id"
    t.bigint "club_id"
    t.index ["club_id"], name: "index_athletes_on_club_id"
    t.index ["region_id"], name: "index_athletes_on_region_id"
    t.index ["sex_id"], name: "index_athletes_on_sex_id"
  end

  create_table "athleteseries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idSerie"
    t.integer "idAthlete"
    t.integer "idStatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "championships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "initdate"
    t.datetime "findate"
    t.integer "idRegion"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "lastname"
    t.string "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_clubs_on_region_id"
  end

  create_table "coaches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "names"
    t.string "surnames"
    t.string "sex"
    t.date "birthdate"
    t.string "rut"
    t.string "cellPhone"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competition_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.time "hour"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.bigint "sex_id"
    t.bigint "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "competition_type_id"
    t.index ["category_id"], name: "index_competitions_on_category_id"
    t.index ["competition_type_id"], name: "index_competitions_on_competition_type_id"
    t.index ["sex_id"], name: "index_competitions_on_sex_id"
    t.index ["sport_id"], name: "index_competitions_on_sport_id"
    t.index ["stage_id"], name: "index_competitions_on_stage_id"
  end

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "lugar"
    t.integer "marca"
    t.integer "pista"
    t.string "atleta"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serie"
  end

  create_table "discipline_championship2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discipline_championships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idChampionship"
    t.integer "idDiscipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discipline_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.decimal "value", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female10000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female10000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female100mthudrlesHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female100mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mtshurdles_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female110mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female110mtshudrleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female1500mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female1500mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female20000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female20000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female200mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female200mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female3000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female3000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female3000mtsobstacles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female3000mtsobstacleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female400mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female400mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female4x100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female4x100mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female4x400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female4x400mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female800mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female800mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female8x50mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female8x50mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_discus_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_high_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_javelin_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_javelines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "femalejump_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "femalesenior200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femaleSenior200mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "femalethrowing_disc_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hjump2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "hjump_head2_id"
    t.string "athlete"
    t.string "an"
    t.string "region"
    t.string "club"
    t.string "achievement"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rut"
    t.index ["hjump_head2_id"], name: "index_hjump2s_on_hjump_head2_id"
  end

  create_table "hjump_head2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_hjump_head2s_on_category_id"
    t.index ["competition_id"], name: "index_hjump_head2s_on_competition_id"
    t.index ["sex_id"], name: "index_hjump_head2s_on_sex_id"
    t.index ["sport_id"], name: "index_hjump_head2s_on_sport_id"
  end

  create_table "jump2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "jump_head2_id"
    t.string "athlete"
    t.string "club"
    t.string "first"
    t.string "vvfirst"
    t.string "second"
    t.string "vvsecond"
    t.string "third"
    t.string "vvthird"
    t.string "op"
    t.string "fourth"
    t.string "vvfourth"
    t.string "fifth"
    t.string "vvfifth"
    t.string "sixth"
    t.string "vvsixth"
    t.string "achievement"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "an"
    t.string "region"
    t.string "points"
    t.string "rut"
    t.string "bestAchievement"
    t.index ["jump_head2_id"], name: "index_jump2s_on_jump_head2_id"
  end

  create_table "jump_females", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jump_head2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fecha_date"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serie"
    t.index ["category_id"], name: "index_jump_head2s_on_category_id"
    t.index ["competition_id"], name: "index_jump_head2s_on_competition_id"
    t.index ["sex_id"], name: "index_jump_head2s_on_sex_id"
    t.index ["sport_id"], name: "index_jump_head2s_on_sport_id"
  end

  create_table "jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male10000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male10000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male100mthudrleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male100mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male100mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male100mtshurdles_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male110mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male110mtshudrleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male1500mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male1500mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male20000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male20000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male200mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male200mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male3000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male3000mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male3000mtsobstacles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male3000mtsobstacleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male400mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male400mthudrleHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male400mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male400mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male4x100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male4x100mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male4x400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male4x400mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male5000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male5000mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male800mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male800mtHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male8x50mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male8x50mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_discus_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_hammer_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_high_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_javelin_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_javelines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_long_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_pole_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malepolejumpsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_triple_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "vvFirst"
    t.string "seconnd"
    t.string "vvSecond"
    t.string "third"
    t.string "vvThird"
    t.string "op"
    t.string "fourth"
    t.string "vvFourth"
    t.string "fift"
    t.string "vvFifth"
    t.string "sixth"
    t.string "vvSixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malejump_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malesenior200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "maleSenior200mts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malethrowing_disc_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referee_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "names"
    t.string "surnames"
    t.string "sex"
    t.date "birthdate"
    t.string "rut"
    t.string "cellPhone"
    t.string "mail"
    t.integer "idLevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "number"
  end

  create_table "registration_detail2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "registration_head2_id"
    t.bigint "competition_id"
    t.string "bestAchievement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_registration_detail2s_on_competition_id"
    t.index ["registration_head2_id"], name: "index_registration_detail2s_on_registration_head2_id"
  end

  create_table "registration_head2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "championship_id"
    t.bigint "sex_id"
    t.date "fecha"
    t.string "name"
    t.string "lastname"
    t.date "an"
    t.string "club"
    t.string "region"
    t.string "pais"
    t.string "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_registration_head2s_on_championship_id"
    t.index ["sex_id"], name: "index_registration_head2s_on_sex_id"
  end

  create_table "registration_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serie_detalles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "lugar"
    t.integer "marca"
    t.integer "pista"
    t.string "atleta"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serie_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.string "name"
    t.bigint "championship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_stages_on_championship_id"
  end

  create_table "start2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "start_head_id"
    t.string "athlete"
    t.string "rail"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "bestAchievement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["start_head_id"], name: "index_start2s_on_start_head_id"
  end

  create_table "start_female10000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female10000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female100mthudresHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female100mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female110mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female110mtshudrleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female1500mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female20000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female20000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female200mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female3000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female3000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female3000mtsobstacles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female3000mtsobstacleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female400mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female400mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female400mtshudrleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female4x100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female4x100mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female4x400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female4x400mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female5000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female5000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female800mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female800mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female8x50mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "female8x50mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_discus_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalediscusthrowStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_hammer_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalehammerthrowStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_high_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalehighjumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_javelins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femaleJavelinHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femaleJumpHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_long_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalelongjumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_pole_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalepolejumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_senior200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femalesenior200mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femaleShotPutHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female_triple_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "femaletriplejumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_start_heads_on_category_id"
    t.index ["competition_id"], name: "index_start_heads_on_competition_id"
    t.index ["sex_id"], name: "index_start_heads_on_sex_id"
    t.index ["sport_id"], name: "index_start_heads_on_sport_id"
  end

  create_table "start_male10000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male10000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male100mthudresHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male100mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male110mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male110mtshudrleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male1500mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male20000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male20000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male200mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male3000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male3000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male3000mtsobstacles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male3000mtsobstacleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male400mtsHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male400mtshudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male400mtshudrleStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male4x100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male4x100mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male4x400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male4x400mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male5000mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male5000mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male800mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male800mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male8x50mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male8x50mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_discus_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "male_discus_throwStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_hammer_throws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malehammerthrowStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_high_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malehighjumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_javelins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "maleJavelinHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_long_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malelongjumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_pole_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malepolejumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_senior200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "malesenior200mtStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "maleShotPutHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_throwing_discs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "maleThrowingDiscHead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_male_triple_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "place"
    t.string "achievement"
    t.integer "rail"
    t.integer "number"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "country"
    t.integer "maletriplejumpStart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_starts_on_category_id"
    t.index ["competition_id"], name: "index_starts_on_competition_id"
    t.index ["sex_id"], name: "index_starts_on_sex_id"
    t.index ["sport_id"], name: "index_starts_on_sport_id"
  end

  create_table "throw2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "throw_head2_id"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "op"
    t.string "fourth"
    t.string "fifth"
    t.string "sixth"
    t.string "achievement"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bestAchievement"
    t.string "rut"
    t.index ["throw_head2_id"], name: "index_throw2s_on_throw_head2_id"
  end

  create_table "throw_head2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fecha_date"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serie"
    t.index ["category_id"], name: "index_throw_head2s_on_category_id"
    t.index ["competition_id"], name: "index_throw_head2s_on_competition_id"
    t.index ["sex_id"], name: "index_throw_head2s_on_sex_id"
    t.index ["sport_id"], name: "index_throw_head2s_on_sport_id"
  end

  create_table "throwings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "name"
    t.string "an"
    t.string "club"
    t.string "reg"
    t.string "country"
    t.string "first"
    t.string "seconnd"
    t.string "third"
    t.string "op"
    t.string "fourth"
    t.string "fift"
    t.string "sixth"
    t.string "achievement"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "track_head2_id"
    t.integer "place"
    t.string "achievement"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rail"
    t.integer "start"
    t.string "bestAchievement"
    t.string "rut"
    t.index ["track_head2_id"], name: "index_track2s_on_track_head2_id"
  end

  create_table "track_head2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.time "hora"
    t.bigint "sex_id"
    t.bigint "competition_id"
    t.bigint "sport_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "wind"
    t.string "serie"
    t.string "type"
    t.index ["category_id"], name: "index_track_head2s_on_category_id"
    t.index ["competition_id"], name: "index_track_head2s_on_competition_id"
    t.index ["sex_id"], name: "index_track_head2s_on_sex_id"
    t.index ["sport_id"], name: "index_track_head2s_on_sport_id"
  end

  create_table "track_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.time "hora"
    t.string "gender"
    t.integer "trackSerieId"
    t.integer "sportId"
    t.integer "categoryId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

  create_table "tracks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "trackHeadId"
    t.integer "place"
    t.string "achievement"
    t.string "athlete"
    t.string "an"
    t.string "club"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rail"
    t.time "bestAchievement"
  end

  add_foreign_key "athletes", "clubs"
  add_foreign_key "athletes", "regions"
  add_foreign_key "athletes", "sexes"
  add_foreign_key "clubs", "regions"
  add_foreign_key "competitions", "categories"
  add_foreign_key "competitions", "competition_types"
  add_foreign_key "competitions", "sexes"
  add_foreign_key "competitions", "sports"
  add_foreign_key "competitions", "stages"
  add_foreign_key "hjump2s", "hjump_head2s"
  add_foreign_key "hjump_head2s", "categories"
  add_foreign_key "hjump_head2s", "competitions"
  add_foreign_key "hjump_head2s", "sexes"
  add_foreign_key "hjump_head2s", "sports"
  add_foreign_key "jump2s", "jump_head2s"
  add_foreign_key "jump_head2s", "categories"
  add_foreign_key "jump_head2s", "competitions"
  add_foreign_key "jump_head2s", "sexes"
  add_foreign_key "jump_head2s", "sports"
  add_foreign_key "registration_detail2s", "competitions"
  add_foreign_key "registration_detail2s", "registration_head2s"
  add_foreign_key "registration_head2s", "championships"
  add_foreign_key "registration_head2s", "sexes"
  add_foreign_key "stages", "championships"
  add_foreign_key "start2s", "start_heads"
  add_foreign_key "start_heads", "categories"
  add_foreign_key "start_heads", "competitions"
  add_foreign_key "start_heads", "sexes"
  add_foreign_key "start_heads", "sports"
  add_foreign_key "starts", "categories"
  add_foreign_key "starts", "competitions"
  add_foreign_key "starts", "sexes"
  add_foreign_key "starts", "sports"
  add_foreign_key "throw2s", "throw_head2s"
  add_foreign_key "throw_head2s", "categories"
  add_foreign_key "throw_head2s", "competitions"
  add_foreign_key "throw_head2s", "sexes"
  add_foreign_key "throw_head2s", "sports"
  add_foreign_key "track2s", "track_head2s"
  add_foreign_key "track_head2s", "categories"
  add_foreign_key "track_head2s", "competitions"
  add_foreign_key "track_head2s", "sexes"
  add_foreign_key "track_head2s", "sports"
end
