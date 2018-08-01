class AddStartToTrack2 < ActiveRecord::Migration[5.1]
  def change
    add_column :track2s, :start, :integer
  end
end
