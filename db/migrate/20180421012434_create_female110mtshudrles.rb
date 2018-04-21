class CreateFemale110mtshudrles < ActiveRecord::Migration[5.1]
  def change
    create_table :female110mtshudrles do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :female110mtshudrleHead_id

      t.timestamps
    end
  end
end
