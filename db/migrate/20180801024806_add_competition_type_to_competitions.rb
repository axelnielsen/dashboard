class AddCompetitionTypeToCompetitions < ActiveRecord::Migration[5.1]
  def change
    add_reference :competitions, :competition_type, foreign_key: true
  end
end
