class CreateAthleteseries < ActiveRecord::Migration[5.1]
  def change
    create_table :athleteseries do |t|
      t.integer :idSerie
      t.integer :idAthlete
      t.integer :idStatus

      t.timestamps
    end
  end
end
