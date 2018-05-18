class CreateCompetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.time :hour
      t.references :sport, foreign_key: true
      t.references :category, foreign_key: true
      t.references :sex, foreign_key: true
      t.references :stage, foreign_key: true

      t.timestamps
    end
  end
end
