class CreateCompetitionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :competition_types do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
