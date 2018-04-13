class CreateStartFemaleShotPuts < ActiveRecord::Migration[5.1]
  def change
    create_table :start_female_shot_puts do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :femaleShotPutHead_id

      t.timestamps
    end
  end
end
