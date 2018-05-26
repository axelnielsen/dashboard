class AddSerieToTrackHead2s < ActiveRecord::Migration[5.1]
  def change
    add_column :track_head2s, :serie, :string
  end
end
