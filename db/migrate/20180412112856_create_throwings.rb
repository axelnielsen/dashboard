class CreateThrowings < ActiveRecord::Migration[5.1]
  def change
    create_table :throwings do |t|
      t.integer :number
      t.string :name
      t.string :an
      t.string :club
      t.string :reg
      t.string :country
      t.string :first
      t.string :seconnd
      t.string :third
      t.string :op
      t.string :fourth
      t.string :fift
      t.string :sixth
      t.string :achievement
      t.integer :place

      t.timestamps
    end
  end
end
