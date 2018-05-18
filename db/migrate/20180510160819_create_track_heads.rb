class CreateTrackHeads < ActiveRecord::Migration[5.1]
  def change
    create_table :track_heads do |t|
      t.date :fecha
      t.time :hora
      t.string :gender
      t.integer :trackSerieId
      t.integer :sportId
      t.integer :categoryId

      t.timestamps
    end
  end
end
