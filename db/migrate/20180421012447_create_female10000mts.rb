class CreateFemale10000mts < ActiveRecord::Migration[5.1]
  def change
    create_table :female10000mts do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :female10000mtHead_id

      t.timestamps
    end
  end
end
