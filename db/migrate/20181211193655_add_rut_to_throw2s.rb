class AddRutToThrow2s < ActiveRecord::Migration[5.1]
  def change
    add_column :throw2s, :rut, :string
  end
end
