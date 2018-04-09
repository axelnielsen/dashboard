class CreateAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes do |t|
      t.string :names
      t.string :surnames
      t.string :sex
      t.date :birthdate
      t.integer :birthyear
      t.string :rut
      t.integer :idClub
      t.integer :idRegion
      t.string :cellPhone
      t.string :mail
      t.integer :idCoach
      t.string :size
      t.string :height

      t.timestamps
    end
  end
end
