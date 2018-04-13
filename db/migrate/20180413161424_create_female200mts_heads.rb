class CreateFemale200mtsHeads < ActiveRecord::Migration[5.1]
  def change
    create_table :female200mts_heads do |t|
      t.integer :championship_id
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end
