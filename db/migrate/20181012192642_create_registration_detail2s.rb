class CreateRegistrationDetail2s < ActiveRecord::Migration[5.1]
  def change
    create_table :registration_detail2s do |t|
      t.references :registration_head2, foreign_key: true
      t.references :competition, foreign_key: true
      t.string :bestAchievement

      t.timestamps
    end
  end
end
