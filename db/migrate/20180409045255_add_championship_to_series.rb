class AddChampionshipToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :championship_id, :integer
  end
end
