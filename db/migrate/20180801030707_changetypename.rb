class Changetypename < ActiveRecord::Migration[5.1]
  def change
  	rename_column :competition_types, :tipo, :name

  end
end
