class CreateThrow2s < ActiveRecord::Migration[5.1]
  def change
    create_table :throw2s do |t|
      t.references :throw_head2, foreign_key: true
      t.string :athlete
      t.string :an
      t.string :club
      t.string :region
      t.string :first
      t.string :second
      t.string :third
      t.string :op
      t.string :fourth
      t.string :fifth
      t.string :sixth
      t.string :achievement
      t.string :place

      t.timestamps
    end
  end
end
