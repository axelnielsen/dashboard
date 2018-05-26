class CreateStarts < ActiveRecord::Migration[5.1]
  def change
    create_table :starts do |t|
      t.date :fecha
      t.time :hora
      t.references :sex, foreign_key: true
      t.references :competition, foreign_key: true
      t.references :sport, foreign_key: true
      t.references :category, foreign_key: true
      t.string :serie

      t.timestamps
    end
  end
end
