class CreateTrack2s < ActiveRecord::Migration[5.1]
  def change
    create_table :track2s do |t|
      t.references :track_head2, foreign_key: true
      t.integer :place
      t.string :achievement
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :pais

      t.timestamps
    end
  end
end
