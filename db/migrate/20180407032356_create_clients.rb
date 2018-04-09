class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :lastname
      t.string :account

      t.timestamps
    end
  end
end
