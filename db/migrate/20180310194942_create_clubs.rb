class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :idRegion
      t.string :address
      t.string :mail
      t.string :cellphone
      t.string :photo

      t.timestamps
    end
  end
end
