class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :trackHeadId
      t.integer :place
      t.string :achievement
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region

      t.timestamps
    end
  end
end
