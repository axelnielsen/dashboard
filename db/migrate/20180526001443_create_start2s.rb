class CreateStart2s < ActiveRecord::Migration[5.1]
  def change
    create_table :start2s do |t|
      t.references :start_head, foreign_key: true
      t.string :athlete
      t.string :rail
      t.string :an
      t.string :club
      t.string :region
      t.string :bestAchievement

      t.timestamps
    end
  end
end
