class CreateRegistrationHead2s < ActiveRecord::Migration[5.1]
  def change
    create_table :registration_head2s do |t|
      t.references :championship, foreign_key: true
      t.references :sex, foreign_key: true
      t.date :fecha
      t.string :name
      t.string :lastname
      t.date :an
      t.string :club
      t.string :region
      t.string :pais
      t.string :dni

      t.timestamps
    end
  end
end
