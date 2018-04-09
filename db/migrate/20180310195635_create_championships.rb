class CreateChampionships < ActiveRecord::Migration[5.1]
  def change
    create_table :championships do |t|
      t.string :name
      t.datetime :initdate
      t.datetime :findate
      t.integer :idRegion
      t.string :address

      t.timestamps
    end
  end
end
