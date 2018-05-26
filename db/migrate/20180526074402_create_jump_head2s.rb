class CreateJumpHead2s < ActiveRecord::Migration[5.1]
  def change
    create_table :jump_head2s do |t|
      t.string :fecha_date
      t.time :hora
      t.references :sex, foreign_key: true
      t.references :competition, foreign_key: true
      t.references :sport, foreign_key: true
      t.references :category, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
