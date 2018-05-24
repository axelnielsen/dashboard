class AddWindToTrackHead2s < ActiveRecord::Migration[5.1]
  def change
    add_column :track_head2s, :wind, :string
  end
end
