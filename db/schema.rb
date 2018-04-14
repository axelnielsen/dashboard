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

ActiveRecord::Schema.define(version: 20180414053323) do

  create_table "athletes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
  end

  create_table "athleteseries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "idSerie"
    t.integer "idAthlete"
    t.integer "idStatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "championships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "initdate"
    t.datetime "findate"
    t.integer "idRegion"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "lastname"
    t.string "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coaches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "discipline_championship2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discipline_championships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "idChampionship"
    t.integer "idDiscipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discipline_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.decimal "value", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "female100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "female100mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female100mtshurdles_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "female1500mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "female200mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "female400mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_javelin_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "femalejump_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "femalethrowing_disc_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jump_females", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male100mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male100mtshurdles_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male1500mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male200mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "male400mts_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_javelin_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "male_shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malejump_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malethrowing_disc_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referee_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "regional_asociations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serie_detalles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "series", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "idDisciplineChampionship"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "championship_id"
  end

  create_table "shot_put_heads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "championship_id"
    t.date "fecha"
    t.time "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_female100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female_javelins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female_jumps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_female_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male100mthudrles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male100mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male1500mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male200mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male400mts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male_javelins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male_shot_puts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "start_male_throwing_discs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "throwings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
