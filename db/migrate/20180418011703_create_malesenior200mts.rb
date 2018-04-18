class CreateMalesenior200mts < ActiveRecord::Migration[5.1]
  def change
    create_table :malesenior200mts do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :maleSenior200mts_id

      t.timestamps
    end
  end
end
