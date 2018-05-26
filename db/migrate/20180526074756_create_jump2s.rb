class CreateJump2s < ActiveRecord::Migration[5.1]
  def change
    create_table :jump2s do |t|
      t.references :jump_head2, foreign_key: true
      t.string :athlete
      t.string :club
      t.string :first
      t.string :vvfirst
      t.string :second
      t.string :vvsecond
      t.string :third
      t.string :vvthird
      t.string :op
      t.string :fourth
      t.string :vvfourth
      t.string :fifth
      t.string :vvfifth
      t.string :sixth
      t.string :vvsixth
      t.string :achievement
      t.string :place

      t.timestamps
    end
  end
end
