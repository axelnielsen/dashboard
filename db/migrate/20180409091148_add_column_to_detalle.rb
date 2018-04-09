class AddColumnToDetalle < ActiveRecord::Migration[5.1]
  def change
    add_column :detalles, :serie, :string
  end
end
