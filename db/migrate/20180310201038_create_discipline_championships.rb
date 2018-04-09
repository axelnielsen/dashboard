class CreateDisciplineChampionships < ActiveRecord::Migration[5.1]
  def change
    create_table :discipline_championships do |t|
      t.integer :idChampionship
      t.integer :idDiscipline

      t.timestamps
    end
  end
end
