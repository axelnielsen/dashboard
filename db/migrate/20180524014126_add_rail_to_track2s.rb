class AddRailToTrack2s < ActiveRecord::Migration[5.1]
  def change
    add_column :track2s, :rail, :string
  end
end
