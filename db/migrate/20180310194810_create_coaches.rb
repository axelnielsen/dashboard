class CreateCoaches < ActiveRecord::Migration[5.1]
  def change
    create_table :coaches do |t|
      t.string :names
      t.string :surnames
      t.string :sex
      t.date :birthdate
      t.string :rut
      t.string :cellPhone
      t.string :mail

      t.timestamps
    end
  end
end
