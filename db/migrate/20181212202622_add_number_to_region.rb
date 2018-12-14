class AddNumberToRegion < ActiveRecord::Migration[5.1]
  def change
    add_column :regions, :number, :string
  end
end
