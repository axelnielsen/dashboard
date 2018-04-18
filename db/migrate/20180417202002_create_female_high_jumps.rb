class CreateFemaleHighJumps < ActiveRecord::Migration[5.1]
  def change
    create_table :female_high_jumps do |t|
      t.integer :number
      t.string :name
      t.string :an
      t.string :club
      t.string :reg
      t.string :country
      t.string :first
      t.string :vvFirst
      t.string :seconnd
      t.string :vvSecond
      t.string :third
      t.string :vvThird
      t.string :op
      t.string :fourth
      t.string :vvFourth
      t.string :fift
      t.string :vvFifth
      t.string :sixth
      t.string :vvSixth
      t.string :achievement
      t.integer :place

      t.timestamps
    end
  end
end
