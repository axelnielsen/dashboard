class CreateDisciplineChampionship2s < ActiveRecord::Migration[5.1]
  def change
    create_table :discipline_championship2s do |t|
      t.string :name
      t.string :sex

      t.timestamps
    end
  end
end
