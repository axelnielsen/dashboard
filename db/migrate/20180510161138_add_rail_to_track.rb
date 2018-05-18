class AddRailToTrack < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :rail, :integer
  end
end
