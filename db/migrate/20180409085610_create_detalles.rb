class CreateDetalles < ActiveRecord::Migration[5.1]
  def change
    create_table :detalles do |t|
      t.integer :lugar
      t.integer :marca
      t.integer :pista
      t.string :atleta
      t.string :an
      t.string :club
      t.string :region
      t.string :pais

      t.timestamps
    end
  end
end
