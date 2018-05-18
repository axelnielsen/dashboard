class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.date :fecha
      t.string :name
      t.references :championship, foreign_key: true

      t.timestamps
    end
  end
end
