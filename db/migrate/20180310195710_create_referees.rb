class CreateReferees < ActiveRecord::Migration[5.1]
  def change
    create_table :referees do |t|
      t.string :names
      t.string :surnames
      t.string :sex
      t.date :birthdate
      t.string :rut
      t.string :cellPhone
      t.string :mail
      t.integer :idLevel

      t.timestamps
    end
  end
end
