class CreateMale4x400mts < ActiveRecord::Migration[5.1]
  def change
    create_table :male4x400mts do |t|
      t.integer :place
      t.string :achievement
      t.integer :rail
      t.integer :number
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :country
      t.integer :male4x400mtHead_id

      t.timestamps
    end
  end
end
