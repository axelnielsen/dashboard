class CreateDisciplineDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :discipline_details do |t|
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
