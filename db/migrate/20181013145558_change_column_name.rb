class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	 rename_column :sexes, :sex, :name
  end
end
