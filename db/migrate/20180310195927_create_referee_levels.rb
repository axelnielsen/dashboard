class CreateRefereeLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :referee_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
