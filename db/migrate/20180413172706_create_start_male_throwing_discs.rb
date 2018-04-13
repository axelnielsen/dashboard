class CreateStartMaleThrowingDiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :start_male_throwing_discs do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :maleThrowingDiscHead_id

      t.timestamps
    end
  end
end
