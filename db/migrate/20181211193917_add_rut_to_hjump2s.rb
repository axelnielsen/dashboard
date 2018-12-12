class AddRutToHjump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :hjump2s, :rut, :string
  end
end
