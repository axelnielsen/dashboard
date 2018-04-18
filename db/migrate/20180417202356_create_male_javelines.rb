class CreateMaleJavelines < ActiveRecord::Migration[5.1]
  def change
    create_table :male_javelines do |t|
      t.integer :number
      t.string :name
      t.string :an
      t.string :club
      t.string :region
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth
      t.string :fifth
      t.string :sixth
      t.string :achievement
      t.integer :place

      t.timestamps
    end
  end
end
