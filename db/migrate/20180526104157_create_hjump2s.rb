class CreateHjump2s < ActiveRecord::Migration[5.1]
  def change
    create_table :hjump2s do |t|
      t.references :hjump_head2, foreign_key: true
      t.string :athlete
      t.string :an
      t.string :region
      t.string :club
      t.string :achievement
      t.string :place

      t.timestamps
    end
  end
end
